//
//  TestLink.swift
//  MultiplatformAppSwiftUI
//
//  Created by Christophe Braud on 29/08/2020.
//

import SwiftUI

struct TestLink: View {
    var body: some View {
        TestBody(feature: .link) {
            TestItem("Link (open browser)") {
                Link("Open apple website", destination: URL(string: "https://www.apple.com")!)

                TestResult {
                    Check(valid:  true, test: "Link")
                }
            }
        }
    }
}

struct TestLink_Previews: PreviewProvider {
    static var previews: some View {
        TestLink()
    }
}