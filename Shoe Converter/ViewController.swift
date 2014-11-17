//
//  ViewController.swift
//  Shoe Converter
//
//  Created by Cristian Malita on 17.11.2014.
//  Copyright (c) 2014 Cristian Malita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menShoeSizeTextField: UITextField!
    @IBOutlet weak var menShoeSizeResultLabel: UILabel!
    
    @IBOutlet weak var womenShoeSizeTextField: UITextField!
    @IBOutlet weak var womenShoeSizeResultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertMenShoeSizeButtonPressed(sender: UIButton) {
        
        let usShoeSize = menShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        let euroShoeSize = usShoeSize + conversionConstant
        
        menShoeSizeResultLabel.hidden = false
        menShoeSizeResultLabel.text = "\(euroShoeSize) in European size."
        menShoeSizeTextField.text = ""
        
        
    }

    @IBAction func convertWomenShoeSizeButtonPressed(sender: UIButton) {
        
        let usShoeSize = Double((womenShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        let euroShoeSize = usShoeSize + conversionConstant
        
        womenShoeSizeResultLabel.hidden = false
        womenShoeSizeResultLabel.text = "\(euroShoeSize) in European size."
        womenShoeSizeTextField.text = ""
        
    }
}

