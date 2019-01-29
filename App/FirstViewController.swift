//
//  FirstViewController.swift
//  swift-objc-buck
//
//  Created by hendy.christianto on 23/01/19.
//  Copyright © 2019 hendy.christianto. All rights reserved.
//

import UIKit

@objc class FirstViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func generateLabel() {
        label.text = "Generated"
    }
}

