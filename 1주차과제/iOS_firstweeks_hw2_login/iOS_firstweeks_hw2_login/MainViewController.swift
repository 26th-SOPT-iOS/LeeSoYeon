//
//  MainViewController.swift
//  iOS_firstweeks_hw2_login
//
//  Created by uju_sy on 2020/04/22.
//  Copyright © 2020 uju_sy. All rights reserved.
//

import UIKit

extension UIButton {
    func setCornerRadius(){
        self.layer.cornerRadius = 10
    }
}


class MainViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginBtn.setCornerRadius()
        signupBtn.setCornerRadius()
       

        
    }

    @IBAction func SignIn(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "SignInViewController")as? SignInViewController else {return}

        receiveViewController.id = idTextField.text
        receiveViewController.password = passwordTextField.text
        self.present(receiveViewController, animated: true, completion: nil)
    }
    
   
        



    }
    
   



