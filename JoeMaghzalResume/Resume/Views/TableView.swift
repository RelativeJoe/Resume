//
//  TableView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 06/08/2024.
//

import SwiftUI

struct TableView: View {
    let items: [TableItem]
    var body: some View {
        Grid(horizontalSpacing: 10, verticalSpacing: 2) {
            ForEach(items) { item in
                let isLastItem = item == items.last
                GridRow(alignment: .separatorTop) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(item.date)
                            .foregroundStyle(.prime)
                            .font(.pdf(.subheadline, weight: .bold))
                        Text(item.location)
                    }.alignmentGuide(.separatorTop) { dimension in
                        dimension[.top] + dimension.height/4
                    }
                    
                    seperator
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(item.title)
                            .foregroundStyle(.prime)
                            .font(.pdf(.headline, weight: .light))
                            .alignmentGuide(.separatorTop) { dimension in
                                dimension[VerticalAlignment.center]
                            }
                        HStack(spacing: 2) {
                            Text(item.subTitle)
                                .foregroundStyle(.second)
                                .fontWeight(.semibold)
                            if let link = item.link {
                                LinkView(item: link)
                            }
                        }
                        VStack(alignment: .leading, spacing: 1) {
                            ForEach(item.bullets, id: \.self) { bullet in
                                HStack(alignment: .firstTextBaseline, spacing: 4) {
                                    Text("\u{2022}")
                                    Text(bullet)
                                }
                            }
                        }
                    }.padding(.bottom, isLastItem ? 0: 10)
                    .frame(maxWidth: .infinity)
                }
            }
        }.fixedSize(horizontal: false, vertical: true)
    }
    
    private var seperator: some View {
        VStack(spacing: 2) {
            Circle()
                .fill(.prime)
                .frame(width: 5, height: 5)
                .alignmentGuide(.separatorTop) { dimension in
                    dimension[.top] + dimension.height/2
                }
            RoundedRectangle(cornerRadius: 1)
                .fill(.grey)
                .frame(width: 1)
        }
    }
}

struct TableItem: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let subTitle: String
    var link: LinkItem?
    let bullets: [String]
    let date: String
    let location: String
}

#Preview {
    TableView(items: Experience.items)
}

extension VerticalAlignment {
    enum SperatorTop: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    static let separatorTop = VerticalAlignment(SperatorTop.self)
}
