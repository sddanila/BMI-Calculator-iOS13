//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChange(_ sender: UISlider) {
        let changedHeight = sender.value
        heightLabel.text = "\(String(format: "%.2f", changedHeight)) m"
        print(sender.value)
    }
    
    @IBAction func weightChange(_ sender: UISlider) {
        let changedWeight = sender.value
        weightLabel.text = "\(String(format: "%.0f", changedWeight)) kg"
        print(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        
        let bmi = weightValue / pow(heightValue, 2)
        
        print(bmi)
    }
}

