//
//  SignupScreenViewController.swift
//  SuperiorVoiceFYP
//
//  Created by Raza on 21/10/2024.
//

import UIKit

class SignupScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func alreadyAccountBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "StudentProtalViewController") as? StudentProtalViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
        
    }
    
}
