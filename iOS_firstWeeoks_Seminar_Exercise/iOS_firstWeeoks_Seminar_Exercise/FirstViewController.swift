//
//  FirstViewController.swift
//  iOS_firstWeeoks_Seminar_Exercise
//
//  Created by uju_sy on 2020/04/18.
//  Copyright © 2020 uju_sy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var sampleSwitch: UISwitch!
    @IBOutlet weak var sampleSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func transferData(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else{return}
             
             receiveViewController.name = nameTextField.text
             receiveViewController.email = emailTextField.text
             receiveViewController.isOnOff = sampleSwitch.isOn
             receiveViewController.frequency = sampleSlider.value
             
             self.present(receiveViewController,animated: true, completion: nil)
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
