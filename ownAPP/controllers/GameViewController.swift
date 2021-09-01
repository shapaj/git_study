import UIKit

// White Game
class GameViewController: UIViewController {

    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var labelUser: UILabel!
    
    @IBOutlet weak var labelCurentValue: UILabel!
    
    
    @IBOutlet var gameButtons: [UIButton]!
    
    let player = CurentUser.shared
    lazy
      var newGame = GameModelIncease()
      {
         [weak self] (status, time) in
          guard let self = self else {return}
        if status == .Lose || status == .Win{
            self.stopGame()
        }
          self.timer.text = "\(Int(time))"
          //self.labelCurentValue.text = "oh U lost ((((("
      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        newGame.timeForPlay = Settings.shared.curentSettings.timeforGame
        labelUser.text = player.userName
        if Settings.shared.curentSettings.timerState{
            timer.text = "\(Int(newGame.timeForPlay))"
        }else{
            timer.text = ""
        }
        labelCurentValue.text = "CurentValue"
        
        startGame()
    }
    
    
    @IBAction func restartGame(_ sender: UIButton) {
        startGame()
    }
    
    @IBAction func onChoseNumber(_ sender: UIButton) {
        
        let isFound = newGame.checkValue(pikedValue: sender.currentTitle ?? "999")
        
            sender.isHidden = isFound
            
            guard isFound else {
                return
            }
            labelCurentValue.text = "find number \(newGame.correctNumber)"
        
        if newGame.gameStatus == .Win{
            stopGame()
        }
    }
    
    func startGame(){
        newGame.stopGame()
       // newGame = GameModelIncease()
        newGame.restartGame(count: gameButtons.count)
        
        
        var index = 0
        for button in newGame.playButtons {
            gameButtons[index].isHidden = !button.visible
            gameButtons[index].setTitle(button.text, for: .normal)
            index += 1
        }
        labelCurentValue.text = "find number \(newGame.correctNumber)"
        
    }
    
    func updateInfoGame(){
    
        
    }
    
    func stopGame() {
    
        switch newGame.gameStatus {
        case .Lose:
            labelCurentValue.text = "oh U lost!!!"
            newGame.stopGame()
        case .Win:
            labelCurentValue.text = "UIIIIIIII!!!! U win!!!!"
            newGame.stopGame()
            if newGame.isNewRecord{
                showAlert()
            }else{
                showAlertActionSheet()
            }
        default:
            break
        }
        self.timer.text = ""
        
        
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "huyase new record!!!", message: "U are bestel the best", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    func showAlertActionSheet(){
//
//        let alert = UIAlertController(title: "huyase new record!!!", message: "U are bestel the best", preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//
//        alert.addAction(newGameAction )
//        present(alert, animated: true, completion: nil)
    }
}


