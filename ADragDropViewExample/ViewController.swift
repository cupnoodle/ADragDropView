//
//  ViewController.swift
//  ADragDropViewExample
//
//  Created by Soulchild on 24/09/2018.
//  Copyright © 2018 fluffy. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var dragDropView: ADragDropView!
    @IBOutlet weak var filenameLabel: NSTextField!
    @IBOutlet weak var imageView: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        dragDropView.acceptedFileExtensions = ["png", "jpg", "jpeg", "gif"]
        dragDropView.delegate = self
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

extension ViewController: ADragDropViewDelegate {
    func dragDropView(_ dragDropView: ADragDropView, droppedFileWithURL URL: URL) {
        
        filenameLabel.stringValue = URL.absoluteString
        imageView.image = NSImage(byReferencing: URL)
    }
    
    func dragDropView(_ dragDropView: ADragDropView, droppedFilesWithURLs URLs: [URL]) {
        
        let alert = NSAlert()
        alert.alertStyle = .warning
        alert.messageText = "Please drop only one file"
        alert.addButton(withTitle: "OK")
        alert.runModal()
    }
}
