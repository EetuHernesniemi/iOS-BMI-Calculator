//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Eetu Hernesniemi on 26.11.2021.
//

import Foundation

struct CalculatorBrain {
    var bmiValue: String = "0.0";
    
    func getBMIValue() -> String {
        return bmiValue
    }
    
    func calculate(height: Float, weight: Float) -> String {
        var bmi : Float = 0
        if height > 0 && weight > 0 {
            bmi = weight / pow(height,2)
        }
        return String(format:"%.1f", bmi)
    }
    
}
