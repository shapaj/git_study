//
//  AppLogin.swift
//  ownAPP
//
//  Created by Ihor Shovkoplias on 29.07.2021.
//

import UIKit

class CurentUser{
    
    static let shared = CurentUser()
    
    var userName:String = "user"
    var password:String = "user"
    var timeForPlay:Float = 50
    
    
    
    private init() {}
    
    func setUserName(userName:String){
        self.userName = userName
    }
    
    func setTimeForPlay(timeForPlay:Float){
        self.timeForPlay = timeForPlay
    }
}
