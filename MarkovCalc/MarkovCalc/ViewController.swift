import UIKit

class ViewController: UIViewController {

    var operand = ""
    var numberONE = ""
    var numberTWO = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func inputNumber(_ sender: UIButton) {
        if operand.isEmpty{
            numberONE = numberONE + (sender.titleLabel?.text)!
            resultLabel.text = numberONE
        }else {
            numberTWO = numberTWO + (sender.titleLabel?.text)!
            resultLabel.text = numberTWO
        }
    }
    @IBAction func inputOperand(_ sender: UIButton) {
        
        operand = sender.titleLabel?.text as! String
    }
    
    @IBAction func cancelAction(_ sender: UIButton) {
        resultLabel.text = "0"
        operand = ""
        numberONE = ""
        numberTWO = ""
        
        
    }
    
    @IBAction func resultAction(_ sender: Any) {
        var result = 0.0
            
            switch operand{
            case "/":
                result = Double(numberONE)! / Double(numberTWO)!
            case "*":
                result = Double(numberONE)! * Double(numberTWO)!
            case "-": result = Double(numberONE)! - Double(numberTWO)!
            case "+":
                result = Double(numberONE)! + Double(numberTWO)!
            default:
                break
                
            }
            if result.truncatingRemainder(dividingBy: 1.0) == 00{
                resultLabel.text = String(Int(result))
                
            }else{
                resultLabel.text = String(result)
            }
            
            
            
            
        }
    }
