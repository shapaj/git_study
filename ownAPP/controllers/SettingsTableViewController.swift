//
//  SettingsTableViewController.swift
//  ownAPP
//
//  Created by Ihor Shovkoplias on 16.08.2021.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    @IBOutlet var settingsTable: UITableView!
   
    @IBOutlet weak var selectTime: UILabel!
   
    var settings = Settings.shared
    var selectValue:Int = 30{
        didSet{
            selectTime.text = "\(selectValue) s"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        selectValue = Settings.shared.curentSettings.timeforGame
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "selectTimeVC":
            if let vc = segue.destination as? SelectTimeViewController{
                vc.data = [10,20,30,40,50,60]
            }
        default:
            break
        }
    }
        
    
        
}
