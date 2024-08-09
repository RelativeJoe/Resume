//
//  Education.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 09/08/2024.
//

import Foundation

enum Education: CaseIterable {
    case lebaneseUniversity
    
    static var items: [TableItem] {
        return allCases.map(\.item)
    }
}

extension Education {
    var bullets: [String] {
        switch self {
            case .lebaneseUniversity:
                return [
                    "Acquired proficiency in applying mathematical frameworks to analyze and solve complex physical problems.",
                    "Learned experimental design techniques and data analysis methods through hands-on laboratory experiences.",
                    "Developed a systematic approach to problem-solving, utilizing analytical thinking and logical reasoning to address complex challenges.",
                ]
        }
    }
    var item: TableItem {
        switch self {
            case .lebaneseUniversity:
                return TableItem(
                    title: "BS in Physics",
                    subTitle: "Lebanese University",
                    bullets: bullets,
                    date: "10/2020 - 07/2024",
                    location: "Zalka, Lebanon"
                )
        }
    }
}
