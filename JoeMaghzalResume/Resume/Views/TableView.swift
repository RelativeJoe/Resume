//
//  SectionedView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 06/08/2024.
//

import SwiftUI

struct TableView: View {
    let items: [TableItem]
    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            Text("EDUCATION")
                .foregroundStyle(.prime)
                .font(.title2.weight(.bold))
            VStack(alignment: .leading, spacing: 2) {
                ForEach(items) { item in
                    let isLastItem = item == items.last
                    HStack(alignment: .top, spacing: 12) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(item.date)
                                .foregroundStyle(.prime)
                                .font(.system(size: 10).weight(.bold))
                            Text(item.location)
                        }
                        VStack(spacing: 2) {
                            Circle()
                                .fill(.prime)
                                .frame(width: 5, height: 5)
                            RoundedRectangle(cornerRadius: 1)
                                .fill(.grey)
                                .frame(width: 1)
                        }
                        VStack(alignment: .leading, spacing: 3) {
                            Text(item.title)
                                .foregroundStyle(.prime)
                                .font(.system(size: 12))
                            Text(item.subTitle)
                                .foregroundStyle(.second)
                                .fontWeight(.semibold)
                            VStack(alignment: .leading, spacing: 1) {
                                Text(item.body)
                                ForEach(item.bullets, id: \.self) { bullet in
                                    HStack(alignment: .firstTextBaseline, spacing: 4) {
                                        Text("\u{2022}")
                                        Text(bullet)
                                    }
                                }
                            }
                        }.padding(.bottom, isLastItem ? 0: 15)
                    }.fixedSize(horizontal: false, vertical: true)
                }
            }
        }
    }
}

struct TableItem: Identifiable {
    let id = UUID()
    let title: String
    let subTitle: String
    let body: String
    var bullets: [String] = []
    let date: String
    let location: String
}

#Preview {
    TableView(items: [
        TableItem(title: "iOS Engineer", subTitle: "Toters", body: "bfkwebrjwh", date: "11/2023 - Present", location: "Zalka, Lebanon"),
        TableItem(title: "hjbaw", subTitle: "fshbfjkhw", body: "bfkwebrjwh", date: "wbjwjdwjk", location: "fjbejwjhrw")
    ])
}
