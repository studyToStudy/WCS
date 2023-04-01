//
//  NewsFeedView.swift
//  SMK
//
//  Created by 이정후 on 2023/04/01.
//

import SwiftUI

struct NewsFeedView: View {
    @ObservedObject var newsFeed = NewsFeed()
     
    var body: some View {
        NavigationView {
            List(newsFeed) { (article: NewsListItem) in
                NavigationLink(destination: NewsListItemView(article: article)) {
                    NewsListItemListView(article: article)
                        .onAppear {
                            self.newsFeed.loadMoreArticles(currentItem: article)
                    }
                }
            }
        .navigationBarTitle("Tech News")
        }
    }
}
 
struct NewsListItemView: View {
    var article: NewsListItem
     
    var body: some View {
        VStack {
            UrlWebView(urlToDisplay: URL(string: article.url)!)
                .edgesIgnoringSafeArea(.all)
                .navigationBarTitle(article.title)
        }
    }
}
 
struct NewsListItemListView: View {
    var article: NewsListItem
     
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(article.title)")
                    .font(.headline)
                Text("\(article.author ?? "No Author")")
                    .font(.subheadline)
            }
        }
    }
}

struct NewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedView()
    }
}
