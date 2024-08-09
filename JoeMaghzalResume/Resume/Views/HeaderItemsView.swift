//
//  HeaderItemsView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 06/08/2024.
//

import SwiftUI

struct HeaderItemsView: View {
    let spacing: Double
    let items: [HeaderItem]
    var body: some View {
        HStack(spacing: spacing) {
            ForEach(items) { item in
                HStack(spacing: 2) {
                    Image(systemName: item.image)
                        .foregroundStyle(.second)
                    Text(item.text)
                        .foregroundStyle(.darkText)
                }
            }
            Spacer()
                .frame(width: spacing/2)
        }
    }
}

struct HeaderItem: Identifiable {
    let id = UUID()
    let text: String
    let image: String
}

#Preview {
    HeaderItemsView(spacing: 12, items: [
        HeaderItem(text: "Title", image: "location.fill")
    ])
}
