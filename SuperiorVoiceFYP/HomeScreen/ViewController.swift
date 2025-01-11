//
//  ViewController.swift
//  SuperiorVoiceFYP
//
//  Created by Raza on 05/10/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }
    // MARK: - Let Start Button
    
    @IBAction func letStartBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "DashBoardViewController") as? DashBoardViewController,
           let navigationController = self.navigationController {
            navigationController.pushViewController(VC, animated: true)
        } else {
            print("Navigation controller not found.")
        }
    }
    
}

