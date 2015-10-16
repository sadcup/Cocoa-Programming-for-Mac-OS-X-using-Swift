//
//  RandomViewController.swift
//  Random
//
//  Created by Netiger on 10/16/15.
//  Copyright © 2015 Sadcup. All rights reserved.
//

import Cocoa

class RandomViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let now = NSDate()
        textField.objectValue = now;
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func seed(sender: NSButton) {
        srandom(UInt32(time(nil)))
        textField.stringValue = "Generator Seeded"
    }
    
    @IBAction func generate(sender: NSButton) {
        var generated = 0
        generated = random()%100 + 1
        textField.integerValue = generated
    }

    @IBOutlet weak var textField: NSTextField!
    
    
}

