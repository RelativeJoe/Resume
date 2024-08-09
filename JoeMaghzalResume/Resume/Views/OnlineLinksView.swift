//
//  OnlineLinksView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 09/08/2024.
//

import SwiftUI

struct OnlineLinksView: View {
    let items: [LinkItem]
    var body: some View {
        HStack {
            ForEach(items) { item in
                LinkView(item: item)
                if item != items.last {
                    Spacer()
                }
            }
        }
    }
}

struct LinkView: View {
    let item: LinkItem
    var body: some View {
        HStack(spacing: 3) {
            if let image = item.image {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                    .foregroundStyle(.second)
            }
            Text(item.url)
                .underline()
                .foregroundStyle(.darkText)
        }
    }
}

struct LinkItem: Identifiable, Equatable {
    let id = UUID()
    var image: String?
    let url: String
}

#Preview {
    OnlineLinksView(items: Links.items)
}
