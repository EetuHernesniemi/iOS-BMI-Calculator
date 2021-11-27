//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Eetu Hernesniemi on 26.11.2021.
//

import Foundation

struct CalculatorBrain {
    var bmi : Float = 0.0
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculate(height: Float, weight: Float){
        if height > 0 && weight > 0 {
            bmi = weight / pow(height,2)
        } else {
            bmi = 0.0
        }
    }
    
}
