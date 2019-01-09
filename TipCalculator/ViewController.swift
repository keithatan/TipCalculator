//
//  ViewController.swift
//  TipCalculator
//
//  Created by Keith Tan on 1/9/19.
//  Copyright © 2019 Keith Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}

