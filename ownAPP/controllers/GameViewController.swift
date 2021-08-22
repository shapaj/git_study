import UIKit

// White Game
class GameViewController: UIViewController {

    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var labelUser: UILabel!
    
    @IBOutlet weak var labelCurentValue: UILabel!
    
    
    @IBOutlet var gameButtons: [UIButton]!
    
    let player = CurentUser.shared
    var newGame = GameModelIncease()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        newGame.timeForPlay = Int(player.timeForPlay)
        labelUser.text = player.userName
        timer.text = "\(Int(player.timeForPlay))"
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
            victory()
        }
    }
    
    func startGame(){
        newGame = GameModelIncease()
        newGame.restartGame(count: gameButtons.count)
        
        
        var index = 0
        for button in newGame.playButtons {
            gameButtons[index].isHidden = !button.visible
            gameButtons[index].setTitle(button.text, for: .normal)
            index += 1
        }
        labelCurentValue.text = "find number \(newGame.correctNumber)"
        
    }
    
    func victory() {
    
        labelCurentValue.text = "UIIIIIIII!!!! U win!!!!"
        
        
    }
}


