//
//  ViewController.swift
//  iMessenger
//
//  Created by Mac OS on 13.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.layer.borderWidth = 1
        loginButton.layer.borderWidth = 1
        
        registerButton.layer.borderColor = UIColor.black.cgColor
        loginButton.layer.borderColor = UIColor.black.cgColor
        
        registerButton.layer.cornerRadius = 25
        loginButton.layer.cornerRadius = 25
        
        titleLabel.text = ""
        var charIndex = 0

        for letter in K.appName {

            Timer.scheduledTimer(withTimeInterval: 0.1*Double(charIndex), repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
}

