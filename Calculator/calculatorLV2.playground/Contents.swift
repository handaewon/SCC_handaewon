import UIKit

class Calculator {
    var firstNumber : Double
    var secondNumber : Double
    
    init (_ firstNumber: Double,_ secondNumber: Double) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber}
    }

    func add() -> Double {
        return firstNumber + secondNumber
    }
    func subtract() -> Double {
        return firstNumber - secondNumber
    }
    func multiply() -> Double {
        return firstNumber * secondNumber
    }
    func divide() -> Double? {
        if secondNumber != 0 {
            return Double((firstNumber / secondNumber) * 50) / 50
        } else {
            print("Error: Cannot divide by zero.")
            return nil
        }
          
    func remainder() -> Double? {
        return secondNumber != 0 ? firstNumber.truncatingRemainder(dividingBy: secondNumber) : nil
            return firstNumber.truncatingRemiander(dividing(by: secondNumber)
           
        
        func calculate(_ operation: String) -> Double {
        switch operation {
        case "+":
            return subtract()
        case "*":
            return multiply()
        case "/":
            return divide() ?? 0
        case "%":
            return remiander() ?? 0
        default:
            return 0
        }
    }
}

var calculator = Calculator(4, 2)
let result = calculator.calculate("/")

print("Result : \(result!)")
