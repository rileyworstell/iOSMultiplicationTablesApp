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
    
    var arr: Array<[Int]> = Array()

    
    @IBOutlet weak var num1: UILabel!
    
    @IBOutlet weak var num2: UILabel!
    
    @IBOutlet weak var isWrong: UILabel!
    @IBOutlet weak var isCorrect: UILabel!
    @IBAction func answerInput(_ sender: Any) {
        return
    }
    
    @IBOutlet weak var answerValue: UITextField!
    
  
    @IBOutlet weak var flashCard: UIView!
   
    @IBAction func submitClicked(_ sender: Any) {
        print(answerValue.text ?? 0)
        let product = Int(num1.text!)! * Int(num2.text!)!
        let intAnswer = Int(answerValue.text!)
       if product == intAnswer {
            print("Correct")
        isWrong.isHidden = true
        isCorrect.isHidden = false
        
        
        
        let value1 = arr.randomElement()
        arr = arr.filter {$0 != value1} // deletes value from array
        print(arr)
        let num1Val = value1![0]
        let num2Val = value1![1]
        
        num1.text = String(num1Val)
        num2.text = String(num2Val)
        answerValue.text = ""
        if arr.count == 0 {
            getArrayValues()
        }
        
       } else {
        isWrong.isHidden = false
        isCorrect.isHidden = true
        print("Wrong")
        }
    }
    
    func getArrayValues() {
        for i in 0...12 {
            for j in 0...12 {
                arr.append([i,j])
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        getArrayValues()
        answerValue.keyboardType = UIKeyboardType.numberPad
          
        isCorrect.isHidden = true
        isWrong.isHidden = true
        
    }
    

    
}

