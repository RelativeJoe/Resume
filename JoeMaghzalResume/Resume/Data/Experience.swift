//
//  ExperienceData.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 8/8/24.
//

import SwiftUI

enum Experience: CaseIterable {
    case toters, montyMobile, bimPOS
    
    static var sections: [TableItem] {
        return allCases.map(\.section)
    }
}

extension Experience {
    var bullets: [String] {
        switch self {
            case .toters:
                return [
                    "Enhanced maintainability and modularity by refactoring and decoupling network modules using SPM and driving code modularization through the expert application of design patterns.",
                    "Reduced the number of support chats inquiring about order statuses by 32% and boosted user engagement with real-time updates by developing Live Activities.",
                    "Saved the company money by preventing the abuse of our OTP endpoints by implementing the App Attest service.",
                    "Increased app stability and performance by profiling the app using Instruments and refactoring components to incorporate async/awai.",
                    "Increased the number of crash free sessions by addressing crashes that affected 7.5k users.",
                    "Reduced the need for CI/CD pipeline maintenance by migrating from CircleCI to Xcode Cloud.",
                    "Enhanced code security, and upheld high code quality standards through thorough code reviews while delivering impactful & constructive feedback."
                ]
            case .montyMobile:
                return [
                    "Improved our app's data flow management by introducing the Combine framework to our MVVM architecture.",
                    "Reduced the app's code complexity by implementing custom tools using property wrappers & result builders, eliminating repetitive code and logic for a more maintainable codebase.",
                    "Facilitated the flow of domain and technical knowledge within the team by organizing and leading comprehensive training sessions.",
                    "Promoted adherence to coding standards and ensured code consistency by conducting thorough code reviews, and providing guidance to team members.",
                    "Ensured clear understanding and alignment on project objectives by effectively communicating complex concepts in team settings and cross-departmental meetings."
                ]
            case .bimPOS:
                return [
                    "Maintained and updated applications written in both Objective-C and Swift, ensuring stability and compatibility across various codebases.",
                    "Developed applications for Apple Watch, iPhone, and iPad, tailoring user experiences to each platform's unique requirements.",
                    "Enhanced existing apps by adding Widgets, improving user engagement and accessibility.",
                    "Managed the deployment process for apps on the App Store, overseeing submission, updates, and compliance with Apple’s guidelines."
                ]
        }
    }
    var section: TableItem {
        switch self {
            case .toters:
                return TableItem(
                    title: "iOS Engineer",
                    subTitle: "Toters",
                    body: "https://www.totersapp.com",
                    bullets: bullets,
                    date: "11/2023 - Present",
                    location: "Zalka, Lebanon"
                )
            case .montyMobile:
                return TableItem(
                    title: "iOS Developer",
                    subTitle: "Monty Mobile",
                    body: "https://montymobile.com",
                    bullets: bullets,
                    date: "03/2021 - 10/2023",
                    location: "Beirut, Lebanon"
                )
            case .bimPOS:
                return TableItem(
                    title: "iOS Developer",
                    subTitle: "BIM POS",
                    body: "https://bimpos.com",
                    bullets: bullets,
                    date: "11/2020 - 03/2021",
                    location: "Beirut, Lebanon"
                )
        }
    }
}
