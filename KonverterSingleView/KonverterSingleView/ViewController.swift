//
//  ViewController.swift
//  KonverterSingleView
//
//  Created by Sebastian Müller on 27.06.19.
//  Copyright © 2019 Sebastian Müller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var inputValue: UITextField!
    @IBOutlet weak var outputValue: UILabel!
    
    @IBAction func pressedConvert(_ sender: Any) {
        
        Convert(inputValue.text!)
        
    }
    
    func Convert(_ input: String)  {
        
        let output = Double(input)
        var outputUnwrapped = Double(output!)
        
        outputUnwrapped *= 0.621371
        outputValue.text = "\(outputUnwrapped)"
        
    }
}

