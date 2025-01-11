//
//  StudentProtalViewController.swift
//  SuperiorVoiceFYP
//
//  Created by Raza on 22/10/2024.
//

import UIKit

class StudentProtalViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        
    }
    
    // MARK: - Navigation
    
//    @IBAction func writeCBtn(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        if let VC = storyboard.instantiateViewController(withIdentifier: "StudentDetailsViewController") as? StudentDetailsViewController,
//           let navigationController = self.navigationController {
//            navigationController.pushViewController(VC, animated: true)
//        } else {
//            print("Navigation controller not found.")
//        }
//    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func chatWithAI(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "GenerateCompliantAIViewController") as? GenerateCompliantAIViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
    }
    
    @IBAction func writeaComplaintBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "writeComplaintViewController") as? writeComplaintViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
    }
    
    @IBAction func complaintStatus(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "complaintStatusViewController") as? complaintStatusViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
    }
    
    @IBAction func complaintResponseBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "complaintResponseViewController") as? complaintResponseViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
    }
}

     
