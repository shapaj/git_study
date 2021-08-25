

import UIKit

let user = CurentUser.shared

enum GameStatus {
    case New
    case Started
    case Win
    case Lose
    
}

struct PlayButton {
    var visible:Bool = true
    var text:String = ""
    var collor:UIColor
    init(number:Int, collor:UIColor) {
        self.text = "\(number)"
        self.collor = collor
        
    }
}
class GameModelIncease {
   
    var timeForPlay:Int = Int(user.timeForPlay){
        didSet{
            updateTimer(gameStatus, timeForPlay)
            if self.timeForPlay == 0{
                gameStatus = .Lose
               
            }
        }
    }
    
    let numbers = Array(0...100)
    
    var correctNumbers:[Int] = []{
        didSet{
        
            if correctNumbers.count == 0{
                correctNumber = ""
            }else{
                correctNumber = String(correctNumbers[0])
            }
        }
    }
    var correctNumber:String = ""
    
    var playButtons:[PlayButton] = []
   
    private var timer:Timer?
    private var updateTimer:((GameStatus, Int)->Void)
    
    var gameStatus:GameStatus = .New{
        didSet{
            if self.gameStatus != .New && self.gameStatus != .Started{
                stopGame()
            }
        }
    }
    init(_ updateTimer:@escaping (_ gameStatus:GameStatus,_ seconds:Int)->Void ) {
        
        //self.timer = Timer.init()
        self.updateTimer = updateTimer
    }
    
    func restartGame(count:Int){
    
        if Settings.shared.curentSettings.timerState{
            self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self](_) in
            self?.timeForPlay -= 1
            
            })
        }
        //var correntNumber:Int
        self.gameStatus = .New
        let allNumbers = self.numbers.shuffled()
        for index in 1...count{
            
            
            self.playButtons.append(PlayButton(number: allNumbers[index], collor: .link))
            
            self.correctNumbers.append(allNumbers[index])
            self.correctNumbers.shuffle()
            
        }
        
    }
    
    func checkValue (pikedValue:String) -> Bool{
        
        guard self.correctNumbers.count != 0 else {return false
        }
        
        let valueIsCorrect = correctNumber == pikedValue
        
        if valueIsCorrect{
            self.correctNumbers.removeFirst()
        }
        if self.correctNumbers.count == 0 {
            
            self.gameStatus = .Win
        
        }
       
        return valueIsCorrect
        
    }
    
    func stopGame() {
        timer?.invalidate()
    }
    
}
