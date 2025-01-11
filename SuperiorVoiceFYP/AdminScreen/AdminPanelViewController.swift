//
//  AdminPanelViewController.swift
//  SuperiorVoiceFYP
//
//  Created by Raza on 22/10/2024.
//

import UIKit

class AdminPanelViewController: UIViewController {
    @IBOutlet var complaintImage: UIImageView!
    @IBOutlet var adminView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        adminView.layer.borderWidth = 8.0
        adminView.layer.borderColor = UIColor.purple.cgColor
        adminView.layer.cornerRadius = 16.0
        adminView.clipsToBounds = true
      
    }
    // MARK: - Navigation

    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func complaintBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "AdminResponseViewController") as? AdminResponseViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
    }
    
    @IBAction func addAdminBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "LoginScreenViewController") as? LoginScreenViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
    }
}
