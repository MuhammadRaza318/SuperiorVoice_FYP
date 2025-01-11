//
//  DashBoardViewController.swift
//  SuperiorVoiceFYP
//
//  Created by Raza on 20/10/2024.
//

import UIKit

class DashBoardViewController: UIViewController {

    @IBOutlet var deanView: UIView!
    @IBOutlet var hodView: UIView!
    @IBOutlet var AdminView: UIView!
    @IBOutlet var studentV1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
        
        
        // Add tap gestures to the views
        let stTaps = UITapGestureRecognizer(target: self, action: #selector(openLoginScreen))
        studentV1.addGestureRecognizer(stTaps)
        
        let adminTap = UITapGestureRecognizer(target: self, action: #selector(adminPanel))
        AdminView.addGestureRecognizer(adminTap)
        
        let deanTap = UITapGestureRecognizer(target: self, action: #selector(deanPanel))
               deanView.addGestureRecognizer(deanTap)

        let hodTap = UITapGestureRecognizer(target: self, action: #selector(hodPanel))
               hodView.addGestureRecognizer(hodTap)
               
        studentV1.isUserInteractionEnabled = true
        AdminView.isUserInteractionEnabled = true
        deanView.isUserInteractionEnabled = true
        hodView.isUserInteractionEnabled = true
    }
    
    // MARK: - Open Login Screen
       @objc func openLoginScreen() {
           let loginVC = storyboard?.instantiateViewController(withIdentifier: "StudentProtalViewController") as! StudentProtalViewController
           navigationController?.pushViewController(loginVC, animated: true)
       }
    @objc func adminPanel() {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "AdminPanelViewController") as! AdminPanelViewController
        navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @objc func deanPanel() {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "DeanPanelViewController") as! DeanPanelViewController
        navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @objc func hodPanel() {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "HODPanelViewController") as! HODPanelViewController
        navigationController?.pushViewController(loginVC, animated: true)
    }
    
    // MARK: - Back Button
    

    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
