//
//  PDFRenderer.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 06/08/2024.
//

import SwiftUI

@MainActor enum PDFRenderer {
    static func render(
        pageSize: CGSize = A4.size,
        url: URL
    ) {
        var box = CGRect(origin: .zero, size: pageSize)
        guard let pdf = CGContext(url as CFURL, mediaBox: &box, nil) else {return}
        render(FirstPageView(), pdf: pdf)
        render(SecondPageView(), pdf: pdf)
        pdf.closePDF()
    }
    private static func render<Content: View>(_ content: Content, pdf: CGContext) {
        let renderer = ImageRenderer(content: content)
        renderer.render { size, context in
            pdf.beginPDFPage(nil)
            context(pdf)
            pdf.endPDFPage()
        }
    }
}

enum A4 {
    static let size = CGSize(width: 595.28, height: 841.89)
}
