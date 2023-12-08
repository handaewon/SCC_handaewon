import Foundation

var inputNumbers = [Int]()
var answerNumbers = [Int]()
var remainningTryCount: Int = 9
var randomUniqueNumbers = [Int]()

class NumberBaseballGame {
    // 1~9까지 임의의 수 생성 함수
    func generateRandomUniqueNumbers() -> [Int] {
        
        while randomUniqueNumbers.count < 3 {
            let randomNumber: Int = Int.random(in: 1...9)
            if !randomUniqueNumbers.contains(randomNumber) {
                continue
            } else {
                randomUniqueNumbers.append(randomNumber)
            }
        }
        return randomUniqueNumbers
    }
    
    // 스트라이크, 볼, 사용자 승리, 컴퓨터 승리 판단 및 출력 함수
    func checkStrikeOrBall(of: [Int]) -> Int {
        var strikeCount = 0
        var ballCount = 0
        remainningTryCount -= 1
        
        for index 0..<3 {
            if inputNumbers[index] == answerNumbers[index] {
                strikeCount += 1
            } else if answerNumbers.contains(inputNumbers[index]) {
                ballCount += 1
            }
        }
        print("\(strikeCount) 스트라이크, \(ballCount) 볼")
        return strikeCount
    }
    
    //remain
    func printGameStatusOrWinner(strikeCount: Int, remainningTryCount: Int) {
        print("--------------------")
        
        if strikeCount == 3 {
            print("사용자 승리...!")
        } else if remainningTryCount == 0 {
            print("컴퓨터 승리...!")
        } else {
            print("남은 기회 : \(remainningTryCount)")
        }
    }
    
    //메뉴 선택
    func selectGameMenu() {
        while true {
            printGameMenu()
    if let selectedMenuNumber: String = readLine() {
      switch selectedMenuNumber {
   case "1": startGame()
   case "2": return
   default:
    print("""
    ------------------------------
    입력값이 잘못되었습니다.
     """)
       }
     }
  }
}

 func getAndPreprocessNumbersInput() -> [Int] {
      var preprocessedNumbersInput = [Int]()
                    
     while Set(preprocessedNumbersInput).count != 3 {
       preprocessedNumbersInput = [Int]()
     print("""
         숫자 3개를 띄어쓰기로 구분하여 입력해주세요.
         중복숫자는 허용하지 않습니다.
         입력 :
          """, terminator: " ")
                                    
    if let rawNumbersInput: String = readLine() {
    let preprocessingNumbersInput: [String] = rawNumbersInput.split(separator: " ").map { String($0) }
    for index in preprocessingNumbersInput {
      if let oneIntegerElementFromPreprocessingNumbersInput: Int = Int(index) {
         preprocessedNumbersInput.append(oneIntegerElementFromPreprocessingNumbersInput)
            } else {
           print("""
             ------------------------------
             입력값이 잘못되었습니다.
             """)
          break
            }
         }
       }ㅇ
    }
       return preprocessedNumbersInput
                }

 /// 게임 시작 함수
     func startGame() {
       remainningTryCount = 9
      answerNumbers = generateRandomUniqueNumbers()
      for _ in 1...9 {
         inputNumbers = getAndPreprocessNumbersInput()
       let strikeCount: Int = checkStrikeOrBall(of: inputNumbers)
        printGameStatusOrWinner(strikeCount: strikeCount, remainningTryCount: remainningTryCount)
    if inputNumbers == answerNumbers {
                            break
             }
         }
     }
  }

  let numberBaseballGame = NumberBaseballGame()
            numberBaseballGame.selectGameMenu()
       

