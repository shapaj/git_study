//
//  StartViewController.swift
//  ownAPP
//
//  Created by Ihor Shovkoplias on 30.07.2021.
//

import UIKit

class StartViewController: UIViewController {

    
    let player = CurentUser.shared
    @IBOutlet weak var loginTextFild: UITextField!
    @IBOutlet weak var timeSlider: UISlider!
    @IBOutlet weak var startWhiteGameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeSlider.value = player.timeForPlay
        
        
        
    }
    
    @IBAction func ChangeLogin(_ sender: UITextField) {
        
    }
    @IBAction func changeTime(_ sender: UISlider) {
        
    }
    @IBAction func startWhiteGame(_ sender: UIButton) {
        player.setUserName(userName: loginTextFild.text ?? "")
        player.setTimeForPlay(timeForPlay: timeSlider.value)
    }
    
}
