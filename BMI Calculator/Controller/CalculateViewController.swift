//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Eetu Hernesniemi on 26.9.2021.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var bmiValue: String = "0.0";
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValueLabel.text = String(format:"%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValueLabel.text = String(format:"%.0f", sender.value) + "kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height,2)
        self.bmiValue = String(format:"%.1f", bmi)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        if seque.identifier == "goToResult" {
            let destinationVC = seque.destination as! ResultViewController
            destinationVC.bmiValue = self.bmiValue
        }
    }
}

