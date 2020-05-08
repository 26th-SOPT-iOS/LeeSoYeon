//
//  LogInViewController.swift
//  LoginView
//
//  Created by uju_sy on 2020/05/02.
//  Copyright © 2020 uju_sy. All rights reserved.
//

import UIKit

extension UIButton {
    func setCornerRadius1(){
        self.layer.cornerRadius = 24
    }
    func underline() {
          guard let text = self.titleLabel?.text else { return }
          let attributedString = NSMutableAttributedString(string: text)
          //NSAttributedStringKey.foregroundColor : UIColor.blue
          attributedString.addAttribute(NSAttributedString.Key.underlineColor, value: self.titleColor(for: .normal)!, range: NSRange(location: 0, length: text.count))
          attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: self.titleColor(for: .normal)!, range: NSRange(location: 0, length: text.count))
          attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: text.count))
          self.setAttributedTitle(attributedString, for: .normal)
      }
}

class LogInViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addKeyboardObserver()
        
        emailTextField.delegate = self
        passwordTextField.delegate = self

        self.emailLabel.layer.cornerRadius = 22
        self.passwordLabel.layer.cornerRadius = 22
                
        emailLabel.layer.masksToBounds = true
        passwordLabel.layer.masksToBounds = true
        // Do any additional setup after loading the view.
        loginButton.setCornerRadius1()
        signUpButton.underline()
        
    }
    

   

}

extension LogInViewController: UITextFieldDelegate{

// UITextFieldDelegate 생성하기
// 아래 두줄을 viewDidLoad함수안에 적어야 하므로..


}

// viewDidLoad에 addKeyboardObserver() 적기!
extension LogInViewController {
    
    private func addKeyboardObserver() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    private func closeKeyboardObserver(){
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let curve = notification.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        UIView.animate(withDuration: duration, delay: 0, options: .init(rawValue: curve), animations: {
            self.backgroundView.transform = .init(translationX: 0, y: -130)
        })
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let curve = notification.userInfo?[UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        UIView.animate(withDuration: duration, delay: 0, options: .init(rawValue: curve), animations: {
            self.backgroundView.transform = .identity
        })
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
