//
//  ViewController.swift
//  Assignment1Calculator
//
//  Created by Мырзахан Акерке on 03.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var first = ""
    var second = ""
    var function = ""
    var result = 0.0
    var userInput = ""
    var cnt = 0
    var cnt2 = 0
    

    @IBOutlet weak var Display: UILabel!
    @IBAction func clearButton(_ sender: Any) {
        first = ""
        second = ""
        function = ""
        userInput = ""
        result = 0.0
        Display.text = "0"
        cnt = 0
        cnt2 = 0
    }
    
    @IBAction func divideButton(_ sender: Any) {
        function = "/"
        first = userInput
        userInput = ""
        if(cnt2 == 0){
            result = Double(first)!
            first = "1"
        }
        cnt2 += 1
        if(cnt == 0){
            result /= Double(first)!
            first = String(result)
        }

    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        function = "*"
        first = userInput
        userInput = ""
        if(cnt2 == 0){
            result = Double(first)!
            first = "1"
        }
        cnt2 += 1
        if(cnt == 0){
            result *= Double(first)!
            first = String(result)
        }
        

    }
    
    @IBAction func substractButton(_ sender: Any) {
        function = "-"
        first = userInput
        userInput = ""
        if(cnt2 == 0){
            result = Double(first)!
            first = "0"
        }
//        else{
//            result -= Double(first)!
//            first = String(result)
//        }
        if(cnt == 0){
            result -= Double(first)!
            first = String(result)
        }
        cnt2 += 1
       
      
    }
    
    @IBAction func addButton(_ sender: Any) {
        function = "+"
        first = userInput
        userInput = ""
        if (cnt == 0){
            result += Double(first)!
            first = String(result)
        }

    }
    
    @IBAction func equalButton(_ sender: Any) {
        second = userInput
       
        if( cnt >= 1 ){
            first = String(result)
            second = userInput
            result = 0.0
        }
        var firstInput = 0.0
        var secondInput = 0.0
        firstInput = Double(first)!
        secondInput = Double(second)!
        if( function == "+"){
            result = firstInput + secondInput
            Display.text = String(result)
            //first = String(result)
        }
      
        else if( function == "-"){
            result = firstInput - secondInput
            Display.text = String(result)
//            cnt2 += 1
        }
        else if( function == "*"){
            result = firstInput * secondInput
            Display.text = String(result)
        }
        else {
            result = firstInput / secondInput
            Display.text = String(result)
        }
        cnt += 1
        
      
    }
    
    @IBAction func decimalButton(_ sender: Any) {
        Display.text = ""
        userInput += "."
        Display.text! += userInput
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        Display.text = ""
        userInput += "0"
        Display.text! += userInput
    }
    
    @IBAction func oneButton(_ sender: Any) {
        Display.text = ""
        userInput += "1"
        Display.text! += userInput
    }
    
    
    @IBAction func twoButton(_ sender: Any) {
        Display.text = ""
        userInput += "2"
        Display.text! += userInput
    }
    
    @IBAction func thirdButton(_ sender: Any) {
        Display.text = ""
        userInput += "3"
        Display.text! += userInput
    }
    
    @IBAction func fourButton(_ sender: Any) {
        Display.text = ""
        userInput += "4"
        Display.text! += userInput
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        Display.text = ""
        userInput += "5"
        Display.text! += userInput
    }
    
    @IBAction func sixButton(_ sender: Any) {
        Display.text = ""
        userInput += "6"
        Display.text! += userInput
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        Display.text = ""
        userInput += "7"
        Display.text! += userInput
    }
    
    @IBAction func eightButton(_ sender: Any) {
        Display.text = ""
        userInput += "8"
        Display.text! += userInput
    }
    
    @IBAction func nineButton(_ sender: Any) {
        Display.text = ""
        userInput += "9"
        Display.text! += userInput
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

