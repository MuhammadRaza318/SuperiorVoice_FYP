//
//  LoginScreenViewController.swift
//  SuperiorVoiceFYP
//
//  Created by Raza on 21/10/2024.
//

import UIKit

class LoginScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - BackButton
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func dontHaveABtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "SignupScreenViewController") as? SignupScreenViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
    }
    
    @IBAction func loginBtn(_ sender: Any) {
    }
    
    @IBAction func forgetBtn(_ sender: Any) {
    }
}
