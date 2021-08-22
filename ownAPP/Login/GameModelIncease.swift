//
//  GameModelIncease.swift
//  ownAPP
//
//  Created by Ihor Shovkoplias on 29.07.2021.
//

//import Foundation
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
   
    var timeForPlay:Int = Int(user.timeForPlay)
    
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
    
    var gameStatus:GameStatus = .New
    init() {
        
        self.timer = Timer.init()
    //timeFoPlay
////        self.timer = Timer.scheduledTimer(timeInterval: 0.01, target: T##Any, selector: T##Selector, userInfo: T##Any?, repeats: Bool)
    }
    
    func restartGame(count:Int){
    
        //var correntNumber:Int
        self.gameStatus = .New
        //self.timer? = TimeInterval(self.timeForPlay) //!!!tofix
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
    
    
}
