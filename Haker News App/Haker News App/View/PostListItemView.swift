//
//  PostListItemView.swift
//  Haker News App
//
//  Created by Evgeniy Zelinskiy on 06.02.2024.
//

import SwiftUI

struct PostListItemView: View {
    let point: String?
    let title: String
    let author: String?
    let numberOfComments: Int?
    var body: some View {
        HStack {
            if let safePoint = point {
                VStack(alignment: .center) {
                    Text(String(safePoint))
                        .font(.callout)
                    Text("points")
                        .font(.caption2)
                }
            }
            VStack(alignment: .leading) {
                Text(title)
                    .font(.body)
                if let safeAuthor = author, let safeNumberOfComments = numberOfComments {
                    Text("by \(safeAuthor) | \(safeNumberOfComments) comments")
                        .foregroundColor(.gray)
                        .font(.caption)
                }
            }
        }
    }
}
