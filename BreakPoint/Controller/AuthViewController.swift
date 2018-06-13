//
//  AuthViewController.swift
//  BreakPoint
//
//  Created by Henry Chukwu on 5/18/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit
import Firebase

class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }

    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        present(loginVC!, animated: true, completion: nil)
    }

    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
    }

    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
    }

}
