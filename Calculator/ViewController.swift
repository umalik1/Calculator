//
//  ViewController.swift
//  Calculator
//
//  Created by Umer Malik on 8/27/16.
//  Copyright © 2016 Umer Malik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userIsInTheMiddleOfTyping = false
    
    @IBOutlet weak var display: UILabel!
  
    @IBAction func getDigit(sender: UIButton) {
        let digit = sender.currentTitle! // sending value on the button
       
        if userIsInTheMiddleOfTyping {
            let currenttextInDisplay = display.text!
            display.text! = currenttextInDisplay + digit
        } else {
            display.text! = digit
        }
        
        userIsInTheMiddleOfTyping = true
    }

    @IBAction func performOperation(sender: UIButton) {
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text! = String(M_PI)
            }
        }
    }
    
    
}

