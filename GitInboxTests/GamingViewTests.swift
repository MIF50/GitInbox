//
//  GamingViewTests.swift
//  GitInboxTests
//
//  Created by Mohamed Ibrahim on 05/12/2023.
//

import XCTest
@testable import GitInbox
import ViewInspector
import SwiftUI

final class GamingViewTests: XCTestCase {

    func test_circle_isRed() throws {
        let sut = GamingView()
        
        let color = try sut.inspect().shape().foregroundStyleShapeStyle(Color.self)
        
        XCTAssertEqual(color, Color.red)
    }
}

