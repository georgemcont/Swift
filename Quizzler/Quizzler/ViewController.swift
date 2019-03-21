import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {
    var questionBank = QuestionBank()
    var questionShowing: Int = 0
    var userSelectedAnswer: Int = 1
    var score: Int = 0
    var question: Int = 1
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        let userSelectedAnswer = sender.tag
        let accessArray = questionBank.questionArray[questionShowing]
        if accessArray.answerText == true && userSelectedAnswer == 1 {
            score = score + 1
        } else if accessArray.answerText == false && userSelectedAnswer == 2 {
            score = score + 1
        }
            scoreLabel.text = "Score: \(score)"
            questionShowing = questionShowing + 1
            questionNumberLabel.text = "Question: \(questionShowing + 1)"
            nextQuestion()
    }
    
    func updateUI() {
      
    }

    func nextQuestion() {
        let questionArrayCount = questionBank.questionArray.count
        if questionShowing < questionArrayCount {
            let accessArray = questionBank.questionArray[questionShowing]
            questionLabel.text = accessArray.questionText
        } else if questionShowing == questionArrayCount {
            // Create a popup
            let alert = UIAlertController(title: "Game Over", message: "Your Final Score is \(String(score))", preferredStyle: UIAlertController.Style.alert)
                self.present(alert, animated: true, completion: nil)
            // add an action (button)
            alert.addAction(UIAlertAction(title: "Start Over", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction) in
                self.startOver()
            }))
            
        }
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(questionArrayCount)) * CGFloat(questionShowing + 1)
    }
    
    func startOver() {
        //Reset
        questionShowing = 0
        userSelectedAnswer = 1
        score = 0
        question  = 1
        let accessArray1 = questionBank.questionArray[questionShowing]
        questionLabel.text = accessArray1.questionText
        scoreLabel.text = "Score: \(score)"
        questionNumberLabel.text = "Question: \(questionShowing + 1)"
    }
    
}
