//
//  ViewController.swift
//  Rekordbox Cue Converter
//
//  Created by Ryan Levi on 12/24/17.
//  Copyright © 2017 Ryan Levi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var filename_field: NSTextField!
    @IBOutlet weak var convertOrCopy: NSComboBox!
    @IBOutlet weak var from: NSComboBox!
    @IBOutlet weak var to: NSComboBox!
    @IBOutlet weak var colorA: NSColorWell!
    @IBOutlet weak var colorB: NSColorWell!
    @IBOutlet weak var colorC: NSColorWell!
    @IBOutlet weak var colorD: NSColorWell!
    @IBOutlet weak var colorE: NSColorWell!
    @IBOutlet weak var colorF: NSColorWell!
    @IBOutlet weak var colorG: NSColorWell!
    @IBOutlet weak var colorH: NSColorWell!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func clickButton(_ sender: Any) {
        let dialog = NSOpenPanel();
        
        dialog.title                   = "Choose your Rekordbox .xml file";
        dialog.showsResizeIndicator    = true;
        dialog.showsHiddenFiles        = false;
        dialog.canChooseDirectories    = true;
        dialog.canCreateDirectories    = true;
        dialog.allowsMultipleSelection = false;
        dialog.allowedFileTypes        = ["xml"];
        
        if (dialog.runModal() == NSModalResponseOK) {
            let result = dialog.url // Pathname of the file
            
            if (result != nil) {
                let path = result!.path
                filename_field.stringValue = path
            }
        } else {
            // User clicked on "Cancel"
            return
        }
    }
    @IBAction func submit(_ sender: Any) {
        let file = filename_field
        let cA = colorA.color
        let cA_r:Int = Int(cA.redComponent * 256)
        let cA_g:Int = Int(cA.greenComponent * 256)
        let cA_b:Int = Int(cA.blueComponent * 256)
        print(cA_r)
        print(cA_g)
        print(cA_b)
    }

}

