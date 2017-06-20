//
//  ViewController.swift
//  Tippy
//
//  Created by Melody Ann Seda Marotte on 6/20/17.
//  Copyright © 2017 Melody Ann Seda Marotte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        //dismis keyboard
     }
    
    @IBAction func calculateTip(_ sender: Any) {
        
         let tipPercent = [0.18, 0.2, 0.25]
        //an array of percentages
        
        
        let bill = Double(billField.text!) ?? 0
        //type casting the string that is billField into a double and storing it into the constant bill
        //the exclamation point is for variable unwrapping (remember makeSchool lessons)
        // ?? = if some char is pasted in (thus equal to NILL), default to 0
        let tip = bill*tipPercent[tipControl.selectedSegmentIndex]
        //tipPercent(tipControl.selectedSegmentIndex)
        //this means that u use the value in tip[percent that is in the possition of the selected segment index
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        //what %f (or % sign then some symbol) does is replace the %f with your variable
        //%f decimals; %@ strings and other objects; %d interger 
        //the %.2f sets it to two decimal places
    }
    
    
    
}

