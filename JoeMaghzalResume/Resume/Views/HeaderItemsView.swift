//
//  HeaderItemsView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 06/08/2024.
//

import SwiftUI

struct HeaderItemsView: View {
    let items: [HeaderItem]
    var body: some View {
        HStack {
            ForEach(items) { item in
                HStack(spacing: 2) {
                    Image(systemName: item.systemImage)
                        .font(.pdf(.footnote))
                        .foregroundStyle(.second)
                    Text(item.text)
                        .foregroundStyle(.darkText)
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct HeaderItem: Identifiable {
    let id = UUID()
    let text: String
    let systemImage: String
}

#Preview {
    HeaderItemsView(items: Header.items)
}
