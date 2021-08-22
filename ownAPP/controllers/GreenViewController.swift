//
//  GreenViewController.swift
//  ownAPP
//
//  Created by Ihor Shovkoplias on 16.08.2021.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func goToStartMenu(_ sender: Any) {
        
        //self.navigationController?.popToRootViewController(animated: true)
        if let vcs = self.navigationController?.viewControllers{
            for vc in vcs{
                if vc is YellowViewController{
                    self.navigationController?.popToViewController(vc, animated: true)
                    return
                }
                
            }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
