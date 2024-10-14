//
//  AuthPageUITestsLaunchTests.swift
//  AuthPageUITests
//
//  Created by Gab on 10/11/24.
//

import XCTest

final class AuthPageUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
    
    func testPageOne() throws {
        let app = XCUIApplication()
        app.launch()
        
        let verificationBtn = app.staticTexts["PageOneVerification"].firstMatch
        let manageBtn = app.staticTexts["PageOneManage"].firstMatch
        manageBtn.tap()
        verificationBtn.tap()
    }
    
    func testPageTWo() throws {
        let app = XCUIApplication()
        app.launch()
        
        let manageBtn = app.staticTexts["PageTwoManage"].firstMatch
        manageBtn.tap()
    }
    
}
