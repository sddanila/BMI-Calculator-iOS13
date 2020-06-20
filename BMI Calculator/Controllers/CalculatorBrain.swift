//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Danila Barton-Szabo on 2020-06-19.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", colour: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", colour: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        default:
            bmi = BMI(value: bmiValue, advice: "Eat less pies", colour: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let returnBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return returnBMI
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Not sure what to tell ya"
    }
    
    func getColour() -> UIColor {
        return bmi?.colour ?? UIColor.systemPink
    }
}
