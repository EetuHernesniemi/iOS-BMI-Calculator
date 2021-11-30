//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Eetu Hernesniemi on 26.11.2021.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.init(red: 255, green: 38, blue: 0, alpha: 1)
    }
    
    mutating func calculate(height: Float, weight: Float){
        let bmiValue = weight / pow(height,2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.init(red: 0, green: 253, blue: 255, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color:UIColor.init(red: 0, green: 249, blue: 0, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.init(red: 255, green: 38, blue: 0, alpha: 1))
        }
    }
    
}
