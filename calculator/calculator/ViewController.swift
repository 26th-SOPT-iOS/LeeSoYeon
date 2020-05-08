//
//  ViewController.swift
//  calculator
//
//  Created by uju_sy on 2020/04/28.
//  Copyright © 2020 uju_sy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var allButtons: [UIButton]!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var sum : Int? = 0
    var num : Int? = 0
    var num2 :Int? = 0
    var labelval:String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setLayout()
        
    }
    func setLayout(){
        allButtons.forEach({
            $0.layer.cornerRadius = $0.layer.frame.size.height  * 0.44
        })
        
        
    }
    
    var tapped = false
    @IBAction func buttonTapped(_ sender: UIButton) {
        let button = sender.titleLabel?.text
        
        if tapped {
            resultLabel.text = resultLabel.text!+button!
        }else{
            resultLabel.text = button!
            tapped = true
        }
        
        
    }
    
    @IBAction func acButton(_ sender: Any) {
        sum = 0
        num = 0
        resultLabel.text = ""
    }
    var isPlus = false
    var isMinus = false
    var isMulti = false
    var isDivid = false
    @IBAction func plusButton(_ sender: UIButton) {
        
        if isPlus == false {
            
            num! = (Int(resultLabel.text!)!)
            tapped = false
            isPlus = true
        }
        
        print("나 들어왔소")
        
        
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        if isPlus{
            num2! = (Int(resultLabel.text!)!)
            
            print(num2!)
            sum = num2! + num!
            
            
        }
        if isMinus{
            num2! = (Int(resultLabel.text!)!)
            sum = num! - num2!
        }
        if isMulti{
            num2! = (Int(resultLabel.text!)!)
            sum = num! * num2!
        }
        if isDivid{
            num2! = (Int(resultLabel.text!)!)
            sum = num! / num2!
        }
        isPlus = true
        isMulti = true
        isMinus = true
        isDivid = true
        resultLabel?.text = String(sum!)
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        if isMinus == false {
            num! = (Int(resultLabel.text!)!)
            tapped = false
            isMinus = true
        }
        
    }
    
    @IBAction func multiButton(_ sender: Any) {
        if isMulti == false{
            num! = (Int(resultLabel.text!)!)
            tapped = false
            isMulti = true
        }
        
    }
    
    @IBAction func divideButton(_ sender: Any) {
        if isDivid == false{
                   num! = (Int(resultLabel.text!)!)
                   tapped = false
                   isDivid = true
               }
    }
    
}

