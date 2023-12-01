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
 }

 func remainder() -> Double? {
     return secondNumber != 0 ? firstNumber.truncatingRemainder(dividingBy: secondNumber) : nil
 }
 
 func calculate(_ operation: String) -> Double {
     switch operation {
     case "+":
         return add()
     case "*":
         return multiply()
     case "/":
         return divide() ?? 0
     case "%":
         return remainder() ?? 0
     default:
         return 0
     }
 }
}

var calculator = Calculator(4, 2)
let result = calculator.calculate("/")

print("Result : \(result)")

