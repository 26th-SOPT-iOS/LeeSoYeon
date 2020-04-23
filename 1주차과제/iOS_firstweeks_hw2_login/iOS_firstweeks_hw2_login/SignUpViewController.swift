//
//  SignUpViewController.swift
//  iOS_firstweeks_hw2_login
//
//  Created by uju_sy on 2020/04/22.
//  Copyright © 2020 uju_sy. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var idTextField2: UITextField!
    @IBOutlet weak var passwordTextField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUp2(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "SignInViewController")as? SignInViewController else {return}
               
               receiveViewController.id = idTextField2.text
               receiveViewController.password = passwordTextField2.text
        self.present(receiveViewController, animated: true, completion: {() -> Void in self.navigationController?.popToRootViewController(animated: true)})
        
       
        
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
