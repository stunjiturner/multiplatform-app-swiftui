//
//  TestLink.swift
//  MultiplatformAppSwiftUI
//
//  Created by Christophe Braud on 29/08/2020.
//

import SwiftUI

struct TestLink: View {
    var body: some View {
        TestBody(test: .link) {
            TestCase("Link (open browser)") {
                Link("Open apple website", destination: URL(string: "https://www.apple.com")!)

                TestResult {
                    Check("Link", .success(os: .iOS), .success(os: .macOS))
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
