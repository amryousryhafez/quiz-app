//
//  ViewController.swift
//  Quizzler
//


import UIKit



class ViewController: UIViewController {
  
    let allquestion  = QuestionBank()
    var pickedAnswer :Bool = false
    var questionNumber:Int=0
    var score : Int = 0
    
    
    @IBOutlet weak var progresslabel: UILabel!
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
 
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var progressBar: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

nextQuestion()

    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag==1 { pickedAnswer = true
            
        }
        else if sender.tag==2 { pickedAnswer = false}
        
       checkAnswer()
        questionNumber+=1
nextQuestion()

        
        
        
        
    }
   
    
    
    @IBOutlet weak var stack: UIStackView!
    func updateUI() {
        
        progressLabel.text = "\(questionNumber + 1)/\(allquestion.list.count)"
        scoreLabel.text = "Score:\t" + String(score)
        progressBar.frame.size.width=(stack.frame.size.width/13)
        * CGFloat(score)
    

        
 }
    

    func nextQuestion() {
        
   
        if questionNumber < allquestion.list.count{
        questionLabel.text=allquestion.list[questionNumber].questionText
            updateUI()
            

        }
        else
        {
          let uiAlert = UIAlertController(title: "Finished", message: "Start Over", preferredStyle:
            .alert)
            
            let actionRestart = UIAlertAction(title: "Restart", style:
                .default
                , handler: { (UIAlertAction) in
                    self.startOver()
            })
            
            uiAlert.addAction(actionRestart)
            
            present(uiAlert
                , animated: true, completion: nil)
            
        }
        
    }
    
    
    func checkAnswer() {
        let allquestion  = QuestionBank()
        
        let answer = allquestion.list[questionNumber].questionAnswer
        
        if pickedAnswer == answer
        {
            ProgressHUD.showSuccess("Right")
            score+=1
        }
        else {
            ProgressHUD.showError("Wrong!")
        }
        
        
        
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
       nextQuestion()
    }
    
}
    

