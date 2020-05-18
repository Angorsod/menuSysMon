//
//  SysMonViewController.swift
//  menuSysMon
//
//  Created by An Gor on 19/05/2020.
//  Copyright © 2020 Angor. All rights reserved.
//

import Cocoa

class SysMonViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

}

extension SysMonViewController {

    static func freshController() -> SysMonViewController {
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        let identifier = NSStoryboard.SceneIdentifier("SysMonViewController")
        guard let view_controller = storyboard.instantiateController(withIdentifier: identifier)
            as? SysMonViewController
        else {
            fatalError("Why cant I find SysMonViewController? - Check Main.storyboard")
        }
        return view_controller
    }

    @IBAction func quit(_ sender: NSButton) {
        NSApplication.shared.terminate(sender)
    }

}
