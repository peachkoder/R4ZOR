//
//  DetailView.swift
//  R4ZORSwiftUI
//
//  Created by doc on 02/12/2022.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.sapo.pt")
    }
}


