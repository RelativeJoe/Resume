//
//  Projects.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 09/08/2024.
//

import Foundation

enum Projects: CaseIterable {
    case elementaryUI, networkKit, macrosKit, doubleSlit, interference
    
    static var items: [Project] {
        return allCases.map(\.item)
    }
}

extension Projects {
    var item: Project {
        switch self {
            case .elementaryUI:
                return Project(
                    title: "ElementaryUI",
                    link: LinkItem(
                        image: "github",
                        url: "https://github.com/buildexperience/ElementaryUI"
                    ),
                    body: "SwiftUI framework featuring developer-friendly APIs designed to streamline development by providing a set of basic components and view modifiers. It leverages the new Swift macros to simplify the creation of stylable views, environment values, and colors using hex codes."
                )
                
            case .networkKit:
                return Project(
                    title: "NetworkKit",
                    link: LinkItem(
                        image: "github",
                        url: "https://github.com/buildexperience/MacrosKit"
                    ),
                    body: "Modern Swift framework designed for declarative networking, inspired by SwiftUI's architecture and built on Swift concurrency. It simplifies code using macros, making network requests more readable and maintainable."
                )
                
            case .macrosKit:
                return Project(
                    title: "MacrosKit",
                    link: LinkItem(
                        image: "github",
                        url: "https://github.com/buildexperience/NetworkKit"
                    ),
                    body: "Swift framework designed to facilitate the creation and management of Swift macros. It provides a comprehensive set of tools and utilities for defining, implementing, and utilizing macros, streamlining code generation and reducing boilerplate."
                )
                
            case .doubleSlit:
                return Project(
                    title: "Young's double slit model simulation",
                    body: "Under the guidance of Dr. Mario Tahchi, we developed a MATLAB simulation of Young's double slit experiment to investigate particle-wave duality. This project aims to deepen our comprehension of quantum mechanics by visualizing interference patterns produced by particles behaving as waves."
                )
                
            case .interference:
                return Project(
                    title: "Ligh Interference in Blender",
                    body: "In our exploration of light interference, we undertook a Blender project to simulate and visualize interference phenomena. Through dynamic animations and simulations, our goal was to deepen our understanding of wave optics and the captivating world of interference patterns."
                )
        }
    }
}
