//
//  SkillsView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 08/08/2024.
//

import SwiftUI

struct SkillsView: View {
    let skills: [String]
    var body: some View {
        WrappingHStack(horizontalSpacing: 10) {
            ForEach(skills, id: \.self) { skill in
                VStack(spacing: 2) {
                    Text(skill)
                        .foregroundStyle(.darkText)
                        .font(.pdf(.subheadline, weight: .bold))
                        .padding(.horizontal, 5)
                    RoundedRectangle(cornerRadius: 1)
                        .fill(.grey)
                        .frame(height: 1)
                }.fixedSize(horizontal: true, vertical: false)
            }
        }
    }
}

#Preview {
    SkillsView(skills: Skills.items)
}
