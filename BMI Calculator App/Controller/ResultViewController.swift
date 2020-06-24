//
//  ResultViewController.swift
//  BMI Calculator App
//
//  Created by Paweł Jagła on 23/06/2020.
//  Copyright © 2020 Paweł Jagła. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
