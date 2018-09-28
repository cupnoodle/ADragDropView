//
//  ADragDropViewTests.swift
//  ADragDropViewTests
//
//  Created by Soulchild on 28/09/2018.
//  Copyright © 2018 fluffy. All rights reserved.
//

import Cocoa
import XCTest

class ADragDropViewTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAcceptedFileExtensionShouldBePublic() {
        let dragDropView = ADragDropView(frame: NSRect(x: 0.0, y: 0.0, width: 120.0, height: 120.0))
        dragDropView.acceptedFileExtensions = ["png", "jpg"]
    }
    
}
