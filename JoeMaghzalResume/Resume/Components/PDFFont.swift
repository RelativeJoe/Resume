//
//  PDFFont.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 09/08/2024.
//

import SwiftUI

enum PDFFontStyle: Double {
    /// 24
    case title = 24
    
    /// 14
    case title2 = 14
    
    /// 12
    case headline = 12
    
    /// 9
    case subheadline = 9
    
    /// 8
    case body = 8
    
    /// 7
    case footnote = 7
}

extension Font {
    static func pdf(_ style: PDFFontStyle, weight: Weight? = nil) -> Font {
        return .system(size: style.rawValue, weight: weight)
    }
}
