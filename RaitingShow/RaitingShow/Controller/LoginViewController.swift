//
//  LoginViewController.swift
//  firebaseDemo
//
//  Created by user on 19/12/2021.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
//    ========================================== localiztion
    @IBOutlet weak var emaiLable: UILabel!
    @IBOutlet weak var passwordLable: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var regesterButton: UIButton!
    //    ==========================================
    var activityIndicator = UIActivityIndicatorView()
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emaiLable.text = "email".localized
        passwordLable.text = "password".localized
        loginButton.setTitle("loginVCLogin".localized, for: .normal)
        regesterButton.setTitle("regesterVCLogin".localized, for: .normal)
        // Do any additional setup after loading the view.
    }
    @IBAction func handleLogin(_ sender: Any) {
        if let email = emailTextField.text,
           let password = passwordTextField.text {
            Activity.showIndicator(parentView: self.view, childView: activityIndicator)
          Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let _ = authResult {
                    if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeNavigationController") as? UITabBarController {
                        vc.modalPresentationStyle = .fullScreen
                        Activity.removeIndicator(parentView: self.view, childView: self.activityIndicator)
                        self.present(vc, animated: true, completion: nil)
                    }
                
                }
            }
        }
    }

    
}
