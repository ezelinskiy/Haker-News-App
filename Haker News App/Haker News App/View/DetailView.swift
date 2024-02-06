//
//  DetailView.swift
//  Haker News App
//
//  Created by Evgeniy Zelinskiy on 31.01.2024.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    let title: String?
    
    var body: some View {
        WebView(urlString: url)
            .navigationTitle(title ?? "")
    }
}

#Preview {
    DetailView(url: "", title: "")
}
