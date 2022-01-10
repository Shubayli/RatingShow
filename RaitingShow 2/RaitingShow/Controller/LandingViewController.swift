//
//  LandingViewController.swift
//  firebaseDemo
//
//  Created by user on 19/12/2021.
//

import UIKit

class LandingViewController: UIViewController {
    
    
    
    @IBOutlet weak var languageSegmentControl: UISegmentedControl! {
        didSet {
            if let language = UserDefaults.standard.string(forKey: "currentLanguage") {
                switch language {
                case "ar":
                    languageSegmentControl.selectedSegmentIndex = 0
                case "en":
                    languageSegmentControl.selectedSegmentIndex = 1
                default:
                    let localLanguage =  Locale.current.languageCode
                    if localLanguage == "ar" {
                        languageSegmentControl.selectedSegmentIndex = 0
                    }else {
                        languageSegmentControl.selectedSegmentIndex = 1
                    }
                }
            }else {
                let localLanguage =  Locale.current.languageCode
                if localLanguage == "ar" {
                    languageSegmentControl.selectedSegmentIndex = 0
                }else {
                    languageSegmentControl.selectedSegmentIndex = 1
                }
            }
        }
    }
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var regesterButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.setTitle("login".localized, for: .normal)
        regesterButton.setTitle("regester".localized, for: .normal)
        // Do any additional setup after loading the view.
    }
    @IBAction func languageChangerPressed(_ sender: UISegmentedControl) {
        if let language = sender.titleForSegment(at: sender.selectedSegmentIndex)?.lowercased() {
            UserDefaults.standard.set(language, forKey: "currentLanguage")
            Bundle.setLanguage(language)
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let sceneDelegate = windowScene.delegate as? SceneDelegate {
                sceneDelegate.window?.rootViewController = storyboard.instantiateInitialViewController()
            }
        }
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
