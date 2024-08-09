//
//  ContentView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 06/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var pdfName = "JoeMaghzal-Resume"
    var body: some View {
        VStack {
            HStack {
                TextField("fileName", text: $pdfName)
                Button(action: {
                    renderAndExport()
                }) {
                    Text("Export")
                }
                Spacer()
            }.padding(.top)
            ScrollView {
                VStack {
                    FirstPageView()
                    SecondPageView()
                }
            }
        }.background(.white)
        .preferredColorScheme(.light)
        .frame(width: A4.size.width)
    }
    
    @MainActor private func renderAndExport() {
        let fileManager = FileManager.default
        let downloadsURL = fileManager.urls(
            for: .downloadsDirectory,
            in: .userDomainMask
        ).first!
        let fileName = "\(pdfName).pdf"
        let resumeURL = downloadsURL.appending(path: fileName)
        PDFRenderer.render(url: resumeURL)
    }
}

#Preview {
    ContentView()
}
