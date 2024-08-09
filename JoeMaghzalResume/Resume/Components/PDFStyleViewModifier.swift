//
//  PDFStyleViewModifier.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 09/08/2024.
//

import SwiftUI

extension View {
    func pdfStyle() -> some View {
        self
            .padding(50)
            .font(.pdf(.body))
            .foregroundStyle(.text)
            .frame(width: A4.size.width, height: A4.size.height, alignment: .top)
            .resumeFooter()
    }
}
