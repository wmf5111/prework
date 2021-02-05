//
//  ViewController.swift
//  prework
//
//  Created by 范为君 on 2021/2/5.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var BillAmountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculatorTip(_ sender: Any) {
        let bill = Double(BillAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0,18, 0,2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

