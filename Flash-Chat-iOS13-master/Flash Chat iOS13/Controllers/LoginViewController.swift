//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        emailTextfield.delegate = self
        emailTextfield.becomeFirstResponder()
    }
    

    @IBAction func loginPressed(_ sender: UIButton) {
                
        guard let email = emailTextfield.text, !email.isEmpty else {
            let alert = UIAlertController(title: nil, message: "아이디를 입력해주세요", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .default, handler: { _ in
                self.emailTextfield.becomeFirstResponder()
            }))
            self.present(alert, animated: false)
            return
        }
        guard let password = passwordTextfield.text, !password.isEmpty else {
            let alert = UIAlertController(title: nil, message: "패스워드를 입력해주세요", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .default, handler: { _ in
                self.passwordTextfield.becomeFirstResponder()
            }))
            self.present(alert, animated: false)
            return
        }
            
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            if let e = error {
                print("🔴 Auth.auth().signIn Error \n\(e)")
                let alert = UIAlertController(title: nil, message: "아이디/패스워드를 확인해주세요", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "확인", style: .default))
                strongSelf.present(alert, animated: false)
            } else {
                strongSelf.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
        }
        
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == emailTextfield {
//            self.emailTextfield.becomeFirstResponder()
//        } else if textField == passwordTextfield {
//            self.passwordTextfield.becomeFirstResponder()
//        }
//        return true
//    }
    
}
