//
//  DetailView.swift
//  H4X0R News
//
//  Created by JuSun Kang on 12/7/23.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
