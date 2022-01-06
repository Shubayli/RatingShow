//
//  LandingViewController.swift
//  firebaseDemo
//
//  Created by user on 19/12/2021.
//

import UIKit

class LandingViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var regesterButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.setTitle("login".localized, for: .normal)
        regesterButton.setTitle("regester".localized, for: .normal)
        // Do any additional setup after loading the view.
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
