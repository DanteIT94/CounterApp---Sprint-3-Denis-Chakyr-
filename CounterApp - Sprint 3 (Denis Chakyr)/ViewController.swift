//
//  ViewController.swift
//  CounterApp - Sprint 3 (Denis Chakyr)
//
//  Created by Денис on 25.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var buttonAddElement: UIButton!
    @IBOutlet weak var buttonDeleteElement: UIButton!
    @IBOutlet weak var buttonResetTo0: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var scoreCounter = 0
    @IBAction func addOneElement(_ sender: Any) {
        counterLabel.text = "Значение счётчика: \(scoreCounter + 1)"
        scoreCounter += 1
    }
    
    @IBAction func deleteOneElement(_ sender: Any) {
        if scoreCounter == 0 {
        } else {
        counterLabel.text = "Значение счётчика: \(scoreCounter - 1)"
        scoreCounter -= 1
        }
    }
    
    @IBAction func resetScore(_ sender: Any) {
        scoreCounter = 0
        counterLabel.text = "Значение счётчика: \(scoreCounter)"
    }
}

