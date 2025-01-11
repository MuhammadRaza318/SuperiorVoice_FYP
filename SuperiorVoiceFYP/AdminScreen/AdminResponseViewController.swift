//
//  AdminResponseViewController.swift
//  SuperiorVoiceFYP
//
//  Created by Raza on 08/01/2025.
//

import UIKit

class AdminResponseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
    }
    

    @IBAction func BACKbTN(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func sendToHod(_ sender: Any) {
    }
    
    @IBAction func sendToDean(_ sender: Any) {
    }
    
}
