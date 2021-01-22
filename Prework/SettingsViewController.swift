//
//  SettingsViewController.swift
//  Prework
//
//  Created by Johnson Hsiung on 1/14/21.
//  Copyright © 2021 Johnson Hsiung. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipOne: UITextField!
    @IBOutlet weak var tip2: UITextField!
    
    @IBOutlet weak var tipThree: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveDefaultTip(_ sender: Any) {
        print("saved")
        let defaultTip = UserDefaults.standard
        defaultTip.set(Double(tipOne.text!), forKey: "tipOne")
         defaultTip.set(Double(tip2.text!), forKey: "tipTwo")
         defaultTip.set(Double(tipThree.text!), forKey: "tipThree")
        
        defaultTip.synchronize()
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
