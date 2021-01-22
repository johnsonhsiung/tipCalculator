//
//  ViewController.swift
//  Prework
//
//  Created by Johnson Hsiung on 1/11/21.
//  Copyright © 2021 Johnson Hsiung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        
        // Do any additional setup after loading the view.
    }
   
    
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
  
    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let defaultTip = UserDefaults.standard
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [defaultTip.double(forKey: "tipOne")/100, defaultTip.double(forKey: "tipTwo")/100, defaultTip.double(forKey: "tipThree")/100]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipPercentageLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaultTip = UserDefaults.standard
        let tipOneValue = defaultTip.double(forKey: "tipOne")
        let tipTwoValue = defaultTip.double(forKey: "tipTwo")
        let tipThreeValue = defaultTip.double(forKey: "tipThree")
        tipControl.setTitle(String(tipOneValue) + "%", forSegmentAt: 0)
        tipControl.setTitle(String(tipTwoValue) + "%", forSegmentAt: 1)
        tipControl.setTitle(String(tipThreeValue) + "%", forSegmentAt: 2)
       
    
    }
    
}

