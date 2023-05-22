//
//  DessertRecipesUITests.swift
//  DessertRecipesUITests
//
//  Created by Linhao Hu on 5/16/23.
//

import XCTest

final class DessertRecipesUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()

    }
    func testPicker()throws{
        
        let elementsQuery = app.scrollViews.otherElements
        let dessertName = elementsQuery.buttons["Apple Frangipan Tart"]
        let instructionText = elementsQuery.staticTexts["Instructions"]
        let ingredientsText = elementsQuery.staticTexts["Ingredients"]
        
        dessertName.tap()
        XCTAssertTrue(instructionText.exists)
        XCTAssertTrue(ingredientsText.exists)

    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
