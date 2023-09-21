//
//  ViewController.swift
//  Calculator
//
//  Created by Jacob Davis on 9/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var availableButtons: [UIButton]!
    @IBOutlet weak var resultingNumber: UILabel!
    @IBOutlet var operationButtons: [UIButton]!
    
    var expression: String = ""
    var secondNumber: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("\(sender.titleLabel!.text!) was pressed")
        checkWhichButton(sender)
//        print(sender.tag)
//        print(sender.titleLabel!.text!)
    }
    
    func checkWhichButton(_ sender: UIButton) {
        let buttonName = sender.titleLabel!.text!
        
        switch buttonName {
        case "1":
            resultingNumber.text! += buttonName
        case "2":
            resultingNumber.text! += buttonName
        case "3":
            resultingNumber.text! += buttonName
        case "4":
            resultingNumber.text! += buttonName
        case "5":
            resultingNumber.text! += buttonName
        case "6":
            resultingNumber.text! += buttonName
        case "7":
            resultingNumber.text! += buttonName
        case "8":
            resultingNumber.text! += buttonName
        default:
            break
        }
    }
    
    func updateNumber() {
        
    }
    
}

