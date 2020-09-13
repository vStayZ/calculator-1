import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculatorLabel: UILabel!
    var isTypingNumber = false
    var len = 0
    var firstNumber = 0
    var secondNumber = 0
    var operation = " "
    
    // Number Tapped
    @IBAction func numberTapped(_ sender: UIButton) {
        let number = sender.currentTitle!
        print(number)
        print("1")
        
        if Int(calculatorLabel.text!.count) >= 10 {
            isTypingNumber = false
            calculatorLabel.text = "0"
        } else if isTypingNumber {
            calculatorLabel.text = calculatorLabel.text! + number
        } else {
            calculatorLabel.text = number
            isTypingNumber = true
        }
    }
    
    // Operator Tapped
    @IBAction func calculationTapped(_ sender: UIButton) {
        isTypingNumber = false
        firstNumber = Int(calculatorLabel.text!)!
        operation = sender.currentTitle!
        print(operation)
        print(firstNumber)
        print("2")
    }
    
    // = clicked
    @IBAction func equalsTapped(_ sender: UIButton) {
        isTypingNumber = false
        var result = 0
        secondNumber = Int(calculatorLabel.text!)!
        print(secondNumber)
        print("3")
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "x" {
            result = firstNumber * secondNumber
        } else if operation == "÷" {
            result = firstNumber / secondNumber
        }
        
        calculatorLabel.text = String(result)
    }
    
    // Clear clicked
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        isTypingNumber = false
        firstNumber = 0
        secondNumber = 0
        calculatorLabel.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

