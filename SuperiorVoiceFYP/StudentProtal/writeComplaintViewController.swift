//
//  writeComplaintViewController.swift
//  SuperiorVoiceFYP
//
//  Created by Raza on 08/01/2025.
//

import UIKit

class writeComplaintViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func checkPComplaint(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "complaintStatusViewController") as? complaintStatusViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
    }
    
    
    @IBAction func sendComplaintBtn(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "complaintSendSuccesfullyViewController") as? complaintSendSuccesfullyViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
    }
    
}
