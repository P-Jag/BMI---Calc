//
//  CalculatorBrain.swift
//  BMI Calculator App
//
//  Created by Paweł Jagła on 24/06/2020.
//  Copyright © 2020 Paweł Jagła. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIvalue() -> String {
        let bmiOneDecimal = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiOneDecimal
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat something dude", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 25.9 {
            bmi = BMI(value: bmiValue, advice: "Nice, you're in good shape", color: #colorLiteral(red: 0.4572512614, green: 1, blue: 0.4166760085, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Go do some workout. Seriously", color: #colorLiteral(red: 1, green: 0.2486087329, blue: 0.2611319207, alpha: 1))
        }
    }
}
