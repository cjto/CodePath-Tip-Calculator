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
    @IBOutlet weak var partySizeText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePreference(_ sender: Any) {
        
        let userRequest = Double(userInput.text!) ?? 0
        let customSize = Double(partySizeText.text!) ?? 0
        
        let defaults = UserDefaults.standard
        
        defaults.set(userRequest, forKey: "myDouble")
        defaults.set(customSize, forKey: "partySize")
        
        defaults.synchronize()
    
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
