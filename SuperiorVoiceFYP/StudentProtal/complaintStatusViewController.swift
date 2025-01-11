//
//  complaintStatusViewController.swift
//  SuperiorVoiceFYP
//
//  Created by Raza on 08/01/2025.
//

import UIKit

class complaintStatusViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
   
}
