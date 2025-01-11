//
//  complaintResponseViewController.swift
//  SuperiorVoiceFYP
//
//  Created by Raza on 08/01/2025.
//

import UIKit

class complaintResponseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
  
}
