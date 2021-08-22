//
//  ViewController.swift
//  ownAPP
//
//  Created by Ihor Shovkoplias on 28.07.2021.
//

import UIKit


class BlueViewController: UIViewController {

    @IBOutlet weak var testLable: UILabel!
 
    var testText = ""
    //    @IBOutlet weak var buttunEnter: UIButton!
//
//    @IBOutlet weak var loginView: UITextField!
//
//    @IBOutlet weak var timeForPlay: UISlider!
//
//    let user = CurentUser.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLable.text = testText
        
        
        
        
    }

    @IBAction func goToGreenScreen(_ sender: Any) {
       // let greenViewController = GreenViewController()
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "greenVC")
        vc.title = "green"
        self.navigationController?.pushViewController(vc, animated: true)
       
    }
    // @IBAction func pressEnter(_ sender: UIButton) {
        
//        guard let userName:String = loginView.text else { return }
//        user.setUserName(userName: userName)
//
      //  guard let timeValue:Float =    else { return }
     //   user.setTimeForPlay(timeForPlay: timeForPlay.value)
        
  //  }
    
}

