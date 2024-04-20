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
    
    func test_tappingCircle_turnsItOrange() throws {
        var sut = GamingView()
        var color = try sut.inspect().button().labelView().shape().foregroundStyleShapeStyle(Color.self)
        XCTAssertNotEqual(color, Color.orange, "Precondition")
        
        let exp = sut.on(\.didAppear) { view in
            try view.button().tap()
            color = try view.button().labelView().shape().foregroundStyleShapeStyle(Color.self)
        }
        
        ViewHosting.host(view: sut)
        wait(for: [exp], timeout: 0.1)
        
        XCTAssertEqual(color, Color.orange)
    }
}

