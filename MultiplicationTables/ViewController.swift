//
//  ViewController.swift
//  MultiplicationTables
//
//  Created by Riley Worstell on 4/26/20.
//  Copyright © 2020 Riley Worstell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var answer = 144
    @IBOutlet weak var num1: UILabel!
    
    @IBOutlet weak var num2: UILabel!
    
    @IBOutlet weak var isWrong: UILabel!
    @IBOutlet weak var isCorrect: UILabel!
    @IBAction func answerInput(_ sender: Any) {
        return
    }
    
    @IBOutlet weak var answerValue: UITextField!
    
    @IBAction func submitClicked(_ sender: Any) {
        print(answerValue.text ?? 0)
        let product = Int(num1.text!)! * Int(num2.text!)!
        let intAnswer = Int(answerValue.text!)
       if product == intAnswer {
            print("Correct")
        isWrong.isHidden = true
        isCorrect.isHidden = false
        
        let num1Val = Int.random(in: 0 ... 12)
        let num2Val = Int.random(in: 0 ... 12)
        num1.text = String(num1Val)
        num2.text = String(num2Val)
        answerValue.text = ""
        
       } else {
        isWrong.isHidden = false
        isCorrect.isHidden = true
        print("Wrong")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      //  answerValue.delegate = self
        isCorrect.isHidden = true
        isWrong.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    
}

