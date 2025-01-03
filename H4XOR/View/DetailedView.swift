//
//  DetailedView.swift
//  H4XOR
//
//  Created by Anket Kohak on 06/08/24.
//

import SwiftUI
import WebKit

struct DetailedView: View {
    let url : String?
    
    var body: some View {
        
        WebView(urlstring: url)
    }
}

#Preview {
    DetailedView(url: "https//www.google.com")
    
}

struct WebView:UIViewRepresentable{
    let urlstring :String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlstring {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
            
        }
    }
}


