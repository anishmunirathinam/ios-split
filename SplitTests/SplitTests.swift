//
//  SplitTests.swift
//  SplitTests
//
//  Created by Munirathinam, Anish | RIEPL on 07/06/23.
//

import XCTest
@testable import Split

final class SplitTests: XCTestCase {

    var model: SPModel!

    override func setUpWithError() throws {
        model = SPModel()
    }

    override func tearDownWithError() throws {
        model = nil
    }

    func testInitalCheckAmount() {
        XCTAssertEqual(model.checkAmount, 0.0)
    }

    func testInitalTipPercent() {
        XCTAssertEqual(model.tipPercent, 20)
    }

    func testInitalNumberOfPersons() {
        XCTAssertEqual(model.numberOfPersons, 2)
    }

    func testAmountPerPerson() {
        model.numberOfPersons = 2
        model.checkAmount = 80
        model.tipPercent = 10
        XCTAssertEqual(model.amountPerPerson, 44)
    }
}
