//
//  ViewController.swift
//  CodePath Tip Calculator
//
//  Created by Cyre Jorin To on 12/30/19.
//  Copyright © 2019 Cyre Jorin To. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var peopleField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPerLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
        self.title = "Cooking Mama Tip Calculator"
    }

    @IBAction func onTap(_ sender: Any) {
        print("mucha")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //Loads default data that was saved
        let defaults = UserDefaults.standard
        
        let doubleValue = (defaults.double(forKey: "myDouble") * 0.01)
        
        // Get the bill/people amount
        let bill = Double(billField.text!) ?? 0
        let people = Double(peopleField.text!) ?? 0
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2, doubleValue ]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        let totalPerPerson = total/people
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$ %.2f", tip)
        
        totalLabel.text = String(format: "$ %.2f", total)
        
        tipPerLabel.text = String(format: "$ %.2f", totalPerPerson)
        
    }
}

