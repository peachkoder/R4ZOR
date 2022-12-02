//
//  WebView.swift
//  R4ZORSwiftUI
//
//  Created by doc on 02/12/2022.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    
    let urlString: String?
    
    
    func makeUIView(context: Context) -> WebView.UIViewType{
      return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context){
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
