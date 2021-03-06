//
//  TestCase.swift
//  MultiplatformAppSwiftUI
//
//  Created by Christophe Braud on 29/08/2020.
//

import SwiftUI

struct TestCase<Content:View>: View {
    let title: String
    let alignment: HorizontalAlignment
    let content:Content

    init(_ pTitle:String, alignment pAlignment: HorizontalAlignment = .leading, @ViewBuilder content pContent: () -> Content) {
        self.title = pTitle
        self.alignment = pAlignment
        self.content = pContent()
    }
    
    var body: some View {
        VStack(alignment: alignment) {
            Text(title)
                .font(.title2)
                .foregroundColor(.black)
                .padding(.bottom, 5)

            content
                .padding(.leading, 10)
                .padding(.bottom, 5)

            Divider()
        }
        .padding(.leading, 5)
    }
}
    
struct TestItem_Previews: PreviewProvider {
    static var previews: some View {
        TestCase("Test Case") {
            TestResult {
                Check("Feature 1", .success(os: .iOS), .success(os: .macOS))
                Check("Feature 2", .error(os: .iOS), .error(os: .macOS))
            }
        }
    }
}
