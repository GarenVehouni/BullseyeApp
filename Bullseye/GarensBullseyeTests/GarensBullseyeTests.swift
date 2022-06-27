//
//  GarensBullseyeTests.swift
//  GarensBullseyeTests
//
//  Created by Mac on 6/26/22.
//

import XCTest
@testable import Bullseye

class GarensBullseyeTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    //go to product then test to test it in the app or run through test navigator or cmmnd U

}
