//
//  SelectTimeViewController.swift
//  ownAPP
//
//  Created by Ihor Shovkoplias on 16.08.2021.
//

import UIKit

class SelectTimeViewController: UIViewController{
    
    var data:[Int] = []
    @IBOutlet weak var tableView: UITableView!
    {
        didSet{
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    }
}


extension SelectTimeViewController:UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0{
//            return 5
//        }
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "timeCell", for: indexPath)
        guard self.data.count != 0 else {
            return cell
        }
//        cell.textLabel?.text = "section - \(indexPath) row - \(indexPath.row)"
        
        cell.textLabel?.text = "\(self.data[indexPath.row])"
        return cell
    }
    
    func  tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        tableView.deselectRow(at: indexPath, animated: true)
        if let uiVCs = navigationController?.viewControllers{
            for uiVC in uiVCs {
                if let VC = uiVC as? SettingsTableViewController{
                    VC.selectValue = self.data[Int(indexPath.row)]
                    
                    Settings.shared.curentSettings.timeforGame = VC.selectValue
                    
                    navigationController?.popViewController(animated: true)
                }
            }
            
        }
    }
}

