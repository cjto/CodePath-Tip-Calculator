//
//  SettingsViewController.swift
//  CodePath Tip Calculator
//
//  Created by Cyre Jorin To on 12/30/19.
//  Copyright © 2019 Cyre Jorin To. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var userInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePreference(_ sender: Any) {
        
        let userRequest = Double(userInput.text!) ?? 0
        let defaults = UserDefaults.standard
        
        defaults.set(userRequest, forKey: "myDouble")
        
        let doubleValue = defaults.double(forKey: "myDouble")
        
        defaults.synchronize()
        
        print(doubleValue)
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
