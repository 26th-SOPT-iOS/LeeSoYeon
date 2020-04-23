//
//  SignInViewController.swift
//  iOS_firstweeks_hw2_login
//
//  Created by uju_sy on 2020/04/22.
//  Copyright © 2020 uju_sy. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    var id:String?
    var password:String?

   
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        setLabels()
        // Do any additional setup after loading the view.
    }
    
    private func setLabels(){
     
        guard let id = self.id else {return}
        guard let password = self.password else {return}
        
        idLabel.text = id
        passwordLabel.text = password
    }

    @IBAction func LogOut(_ sender: Any) {
//        self.dismiss(animated: true, completion: nil )
//        self.presentingViewController?
//            .navigationController?
//                .dismiss(animated: true, completion: nil)
//                .popViewController(animated: true)
//        self.navigationController?.popToRootViewController(animated: true)
    
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
        
    }
    
   
    

}
