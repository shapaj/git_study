

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet var alertButton: UIView!
    @IBOutlet weak var blue: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
       
    override func viewDidAppear(_ animated: Bool) {
        // tets
       // alert.show(self, sender: self)
    }
    @IBAction func showTestAlert(_ sender: Any) {
        let alert = UIAlertController.init()
        alert.message = "Ihor U are right!"
        let action = alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        
        show(alert, sender: "Ihor U are right")
    }
    @IBAction func showBlueScreen(_ sender: Any) {
        
        let paramData = "Ihor U are right"
        performSegue(withIdentifier: "showBlueVC", sender: paramData)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            switch segue.identifier {
            case "showBlueVC":
               
                guard let testText:String = sender as? String else{ break}
                
                if let blueVC1 = segue.destination as? BlueViewController{
                    
                    blueVC1.testText = testText
                }
            default:
                break
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
