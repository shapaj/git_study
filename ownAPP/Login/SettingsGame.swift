//
//  SettingsGame.swift
//  ownAPP
//
//  Created by Ihor Shovkoplias on 16.08.2021.
//

import Foundation

//struct SettingsGame:Decodable, Encodable {||
//Codable is super protocol for Decodable, Encodable

enum KeysUserDefaults{
   static let settingsGame = "SettingsGame"
    static let curentRecord = "curentRecord"
    static let curentRecordsMen = "curentRecordsMen"
}

struct SettingsGame: Codable {
    var timerState:Bool
    var timeforGame:Int
    
}

class Settings{
    
    static var shared = Settings()
    let defaultSettingsGame = SettingsGame(timerState: true, timeforGame: 30)
     
    var curentSettings:SettingsGame{
        get{
            if let data = UserDefaults.standard.object(forKey: KeysUserDefaults.settingsGame) as? Data{
                if let settings =  try? PropertyListDecoder().decode(SettingsGame.self, from: data)
                {
                    return settings
                }else{
                    return defaultSettingsGame
                }
            }else{
                self.curentSettings = defaultSettingsGame
            }
            print(self.curentSettings)
            return self.curentSettings
        }
        set{
            do{
                let data =  try PropertyListEncoder().encode(newValue)
                UserDefaults.standard.setValue(data, forKey: KeysUserDefaults.settingsGame)
            }catch{
                print(error)
            }
        }
    }
    
    func resetSettings(_ onReset: (_ timerState:Bool, _ timeforGame: Int)->Void){
        self.curentSettings = defaultSettingsGame
        onReset(self.curentSettings.timerState, self.curentSettings.timeforGame)
    }
    
}
