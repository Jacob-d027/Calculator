//
//  ViewController.swift
//  Calculator
//
//  Created by Jacob Davis on 9/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultingNumber: UILabel!
    
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var typingNumber: Bool = false
    var operation: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if let digitpressed = sender.titleLabel!.text {
            // the button pressed will be the sender, so get the label title to
            if typingNumber {
                // if typingNumber is true then just append the next button press
                resultingNumber.text! += digitpressed
            } else {
                // If it is false, as it is by default, then just set the first value as the button press and set typingNumber to true to run above code.
                resultingNumber.text! = digitpressed
                
                typingNumber = true
            }
        }
        
    }
    
    
    @IBAction func operationButtonPressed(_ sender: UIButton) {
        if typingNumber {
            //when true take the value of the string and store it as a value
            if let number = Double(resultingNumber.text!) {
                firstNumber = number
                operation = sender.titleLabel!.text!
                resultingNumber.text! += " \(operation)"
                typingNumber = false
                //set typingNumber to false to initiate the typing of second number
            }
        }
    }
    
    
    @IBAction func equalsButtonsPressed(_ sender: UIButton) {
        //after typing first and second numbers and of course choosing an operation, we will return the total of the typed expression.
        if typingNumber {
            if let number = Double(resultingNumber.text!) {
                secondNumber = number
                solveExpression()
            }
        }
    }
    
    
    func solveExpression() {
        // checks what operation button was pressed, then performs said operation and returns result
        switch operation {
        case "+":
            resultingNumber.text = "\(firstNumber + secondNumber)"
        case "-":
            resultingNumber.text = "\(firstNumber - secondNumber)"
        case "x":
            resultingNumber.text = "\(firstNumber * secondNumber)"
        case "/":
            if secondNumber != 0 {
                resultingNumber.text = "\(firstNumber / secondNumber)"
            } else {
                resultingNumber.text = "Error"
            }
        default:
            return
        }
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        //resets all values to back to default values
        resultingNumber.text = "0"
        firstNumber = 0
        secondNumber = 0
        typingNumber = false
        operation = ""
    }
    
}

