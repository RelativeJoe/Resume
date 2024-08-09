//
//  SecondPageView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 8/8/24.
//

import SwiftUI

struct SecondPageView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            TableView(items: Education.items)
                .section("EDUCATION")
            ProjectsView(items: Projects.items)
                .section("PROJECTS")
        }.pdfStyle()
    }
}

#Preview {
    SecondPageView()
}
