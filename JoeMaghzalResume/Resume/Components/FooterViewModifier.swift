//
//  FooterViewModifier.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 09/08/2024.
//

import SwiftUI

extension View {
    func resumeFooter() -> some View {
        overlay(alignment: .bottomTrailing) {
            HStack(spacing: 2) {
                Text("This resume was built using SwiftUI, check it out!")
                    .foregroundStyle(.text)
                LinkView(item: Links.resume)
            }.font(.pdf(.footnote))
            .padding(15)
        }
    }
}
