//
//  ProjectsView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 09/08/2024.
//

import SwiftUI

struct ProjectsView: View {
    let items: [Project]
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Committed to continuous learning and staying current with emerging technologies, I actively experiment with the latest Swift features, watch WWDC labs, and participate in developer communities to adapt to evolving industry standards and enhance my skill set. Additionally, I regularly work on personal projects to engage with new advancements in Swift and SwiftUI:")
            VStack(alignment: .leading, spacing: 15) {
                ForEach(items) { item in
                    VStack(alignment: .leading, spacing: 4) {
                        Text(item.title)
                            .foregroundStyle(.prime)
                            .font(.pdf(.headline, weight: .light))
                        if let link = item.link {
                            LinkView(item: link)
                        }
                        Text(item.body)
                    }
                }
            }
        }
    }
}

struct Project: Identifiable {
    let id = UUID()
    let title: String
    var link: LinkItem?
    let body: String
}

#Preview {
    ProjectsView(items: Projects.items)
}
