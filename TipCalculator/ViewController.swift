//
//  ViewController.swift
//  TipCalculator
//
//  Created by Keith Tan on 1/9/19.
//  Copyright © 2019 Keith Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var checkTotal: UITextField!
    @IBOutlet weak var groupCount: UISegmentedControl!
    
    @IBOutlet weak var dividedLabel: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    @IBOutlet weak var total: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func calculate(_ sender: Any) {
        let check = Double(checkTotal.text!) ?? 0
        let tipPercent = [0.15, 0.18, 0.2, 0.25]
        
        let tipNum = check * tipPercent[tipPercentage.selectedSegmentIndex]
        let dividedTip = Double(tipNum)/Double(groupCount.selectedSegmentIndex + 1)
        let totalNum = check + tipNum
        dividedLabel.text = String(format: "$%.2f", dividedTip)
        tipLabel.text = String(format: "$%.2f", tipNum)
        total.text = String(format: "$%.2f", totalNum)
    }
}

