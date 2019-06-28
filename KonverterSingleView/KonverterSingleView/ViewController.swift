//
//  ViewController.swift
//  KonverterSingleView
//
//  Created by Sebastian Müller on 27.06.19.
//  Copyright © 2019 Sebastian Müller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pickerData: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        unitPicker.delegate = self
        unitPicker.dataSource = self
        
        pickerData = ["kilometer", "Euro"]
    }
    
    @IBOutlet weak var inputValue: UITextField!
    @IBOutlet weak var outputValue: UILabel!
    
    @IBOutlet weak var unitPicker: UIPickerView!
    
    
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

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
}

