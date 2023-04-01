//
//  UrlWebView.swift
//  SMK
//
//  Created by 이정후 on 2023/04/01.
//

import SwiftUI

import SwiftUI
import WebKit
 
struct UrlWebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
     
    var urlToDisplay: URL
     
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
         
        webView.load(URLRequest(url: urlToDisplay))
         
        return webView
    }
     
    func updateUIView(_ uiView: WKWebView, context: Context) {
         
    }
}
