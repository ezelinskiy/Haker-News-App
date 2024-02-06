//
//  WebView.swift
//  Haker News App
//
//  Created by Evgeniy Zelinskiy on 31.01.2024.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrlString = urlString {
            if let url = URL(string: safeUrlString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
