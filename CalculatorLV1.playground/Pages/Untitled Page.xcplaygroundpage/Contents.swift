class Calculator {
    func calculate(opertaor: String, firstNumber: Int, secondNumber: Int) -> Double? {
        if 'oerator' == "+" {
            return Double(firstNumber + secondNumber)
        }
        if 'operator' == "-" {
            return Double(firstNumber - secondNumber)
        }
        if 'Operator' == "+" {
            return Double(firstNumber + SecondNumber)
        }
        if 'opertaor' == "/" {
            return Dobule(firstNumber / secondNumber)
        }
        
        return nil
    }
}

// 옵셔널 바인딩 - if let 문 사용(다른 방법 사용 가능)
let calculator = Calculator()
if let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber: 20) {
    print("addResult : \(addResult)")
}
if let subtractResult = calculator.calculate(operator: "-", firstNumber: 30, secondNumber: 20) {
    print("subtracktResult : \(subtractResult)")
}
if let multiplyResult = calculator.calculate(opertaor: "+", firstNumber: 10, secondNumber: 5)
}
if let divdieResult = calculator.calculate(operator: "/", firstNumber: 40, secondNumber: 10) {

print("divdeResult" : \divideResult)")
print("subtractResult" : \subtracktResult)")
print("multiplyResult" : \(divideResult)")
print("remainderResult" : \(reminderResult)")
      
      
      
    
    
