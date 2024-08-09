//
//  SectionViewModifier.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 8/8/24.
//

import SwiftUI

extension View {
    func section(_ title: String, spacing: Double = 7) -> some View {
        VStack(alignment: .leading, spacing: 7) {
            Text(title)
                .foregroundStyle(.prime)
                .font(.system(size: 14).weight(.bold))
            self
        }
    }
}
