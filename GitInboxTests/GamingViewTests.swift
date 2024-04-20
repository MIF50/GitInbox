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
        
        display(&sut) { view in
            try view.button().tap()
            color = try self.getColorOfGuess(view)
        }
        
        XCTAssertEqual(color, Color.orange)
    }
    
    //MARK: - Helpers
    
    private func display(
        _ sut: inout GamingView,
        using: @escaping((InspectableView<ViewType.View<GamingView>>) throws -> Void)
    ) {
        let exp = sut.on(\.viewInspectorHook,perform: using)
        ViewHosting.host(view: sut)
        wait(for: [exp], timeout: 0.01)
    }
    
    private func getColorOfGuess(_ view: InspectableView<ViewType.View<GamingView>>) throws -> Color {
        try view.button().labelView().shape().foregroundStyleShapeStyle(Color.self)
    }

}

