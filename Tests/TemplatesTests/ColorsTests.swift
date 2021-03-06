//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class ColorsTests: XCTestCase {
  enum Contexts {
    static let rawOnly = ["empty", "defaults", "customname"]
    static let all = rawOnly + ["text-defaults"]
  }

  func testDefault() {
    test(template: "colors-default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .colors)
  }

  func testRawValue() {
    test(template: "colors-rawValue",
         contextNames: Contexts.rawOnly,
         outputPrefix: "rawValue",
         directory: .colors)
  }

  func testSwift3() {
    test(template: "colors-swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .colors)
  }
}
