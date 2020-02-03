//
//  BossViewController.swift
//  DelegateProtocol
//
//  Created by Md. Mehedi Hasan on 3/2/20.
//  Copyright © 2020 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

protocol textFielfDelegate {
    func textFieldValue(value: String)
}

class BossViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var textFieldValueDelegate: textFielfDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func submitClicked(_ sender: Any) {
        textFieldValueDelegate.textFieldValue(value: textField.text!)
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
