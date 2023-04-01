//
//  API.swift
//  SMK
//
//  Created by 이정후 on 2023/04/01.
//

import Foundation
 
class NewsFeed: ObservableObject, RandomAccessCollection {
    typealias Element = NewsListItem
     
    @Published var newsListItems = [NewsListItem]()
     
    var startIndex: Int { newsListItems.startIndex }
    var endIndex: Int { newsListItems.endIndex }
    var loadStatus = LoadStatus.ready(nextPage: 1)
     
    var urlBase = "https://newsapi.org/v2/everything?domains=techcrunch.com,thenextweb.com&apiKey=9d3d84ca6daa4cb7a27ee3a9492e524b&language=en&page="


    init() {
        loadMoreArticles()
    }
     
    subscript(position: Int) -> NewsListItem {
        return newsListItems[position]
    }
     
    func loadMoreArticles(currentItem: NewsListItem? = nil) {
         
        if !shouldLoadMoreData(currentItem: currentItem) {
            return
        }
        guard case let .ready(page) = loadStatus else {
            return
        }
        loadStatus = .loading(page: page)
        let urlString = "\(urlBase)\(page)"
         
        let url = URL(string: urlString)!
        let task = URLSession.shared.dataTask(with: url, completionHandler: parseArticlesFromResponse(data:response:error:))
        task.resume()
    }
     
    func shouldLoadMoreData(currentItem: NewsListItem? = nil) -> Bool {
        guard let currentItem = currentItem else {
            return true
        }
         
        for n in (newsListItems.count - 4)...(newsListItems.count-1) {
            if n >= 0 && currentItem.uuid == newsListItems[n].uuid {
                return true
            }
        }
        return false
    }
     
    func parseArticlesFromResponse(data: Data?, response: URLResponse?, error: Error?) {
        guard error == nil else {
            print("Error: \(error!)")
            loadStatus = .parseError
            return
        }
        guard let data = data else {
            print("No data found")
            loadStatus = .parseError
            return
        }
         
        let newArticles = parseArticlesFromData(data: data)
        DispatchQueue.main.async {
            self.newsListItems.append(contentsOf: newArticles)
            if newArticles.count == 0 {
                self.loadStatus = .done
            } else {
                guard case let .loading(page) = self.loadStatus else {
                    fatalError("loadSatus is in a bad state")
                }
                self.loadStatus = .ready(nextPage: page + 1)
            }
        }
    }
     
    func parseArticlesFromData(data: Data) -> [NewsListItem] {
        var response: NewsApiResponse
        do {
            response = try JSONDecoder().decode(NewsApiResponse.self, from: data)
        } catch {
            print("Error parsing the JSON: \(error)")
            return []
        }
         
        if response.status != "ok" {
            print("Status is not ok: \(response.status)")
            return []
        }
         
        return response.articles ?? []
    }
     
    enum LoadStatus {
        case ready (nextPage: Int)
        case loading (page: Int)
        case parseError
        case done
    }
}
 
class NewsApiResponse: Codable {
    var status: String
    var articles: [NewsListItem]?
}
 
class NewsListItem: Identifiable, Codable {
    var uuid = UUID()
     
    var author: String?
    var title: String
    var url: String
     
    enum CodingKeys: String, CodingKey {
        case author, title, url
    }
}
