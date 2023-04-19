//
//  LoginViewController.swift
//  iMessenger
//
//  Created by Mac OS on 13.04.2023.
//

import FirebaseAuth
import UIKit

class LoginViewController: UIViewController {

 
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                guard self != nil else { return }
                if let e = error {
                    print(e.localizedDescription)
                    self?.errorLabel.text = e.localizedDescription
                } else {
                    self?.performSegue(withIdentifier: K.loginSegue, sender: self)
                    self?.errorLabel.text = ""
                }
            }
        }
    }
}
