//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var trueButt: UIButton!
    @IBOutlet weak var falseButt: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var questionNum = 0
    
    var logic = Logic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

   
    
    @IBAction func answerQuestionPress(_ sender: UIButton) {
        let userAns = sender.currentTitle!
        let correctness = logic.check_ans(userAns)
        
        if correctness{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        logic.nextQuestion()
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { timer in

            self.updateUI()

        }
    }
    
    
    func updateUI(){
        question.text = logic.getText()
        trueButt.backgroundColor = UIColor.clear
        falseButt.backgroundColor = UIColor.clear
        progressbar.progress = logic.getProgressbar()
        scoreLabel.text = "Score: \(logic.score())"
        
    }
}

