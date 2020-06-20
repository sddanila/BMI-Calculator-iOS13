//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Danila Barton-Szabo on 2020-06-19.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var calculatedBMI : Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        self.calculatedBMI = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", calculatedBMI ?? 0.0)
    }
}
