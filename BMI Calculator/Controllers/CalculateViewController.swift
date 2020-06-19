//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var bmi = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightChange(_ sender: UISlider) {
        let changedHeight = sender.value
        heightLabel.text = "\(String(format: "%.2f", changedHeight)) m"
    }
    
    @IBAction func weightChange(_ sender: UISlider) {
        let changedWeight = sender.value
        weightLabel.text = "\(String(format: "%.0f", changedWeight)) kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        
        self.bmi = String(format: "%.1f", weightValue / pow(heightValue, 2))
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.bmiValue = self.bmi
    }
}

