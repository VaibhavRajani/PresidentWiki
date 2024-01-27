//
//  PresidentWikiTests.swift
//  PresidentWikiTests
//
//  Created by Vaibhav Rajani on 1/27/24.
//

import XCTest
@testable import PresidentWiki


class PresidentTests: XCTestCase {
    func testLoadPresidents() {
        let presidents = loadPresidents()
        XCTAssertFalse(presidents.isEmpty, "Presidents list should not be empty.")

        // Optionally, test for specific presidents
        let washington = presidents.first { $0.name == "George Washington" }
        XCTAssertNotNil(washington, "George Washington should be in the list.")
    }
}
