//
//  ViewController.swift
//  DelegateProtocol
//
//  Created by Md. Mehedi Hasan on 3/2/20.
//  Copyright © 2020 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let BossViewController = storyboard?.instantiateViewController(withIdentifier: "BossViewController") as! BossViewController
               BossViewController.textFieldValueDelegate = self
               present(BossViewController, animated: true, completion: nil)
        
    }
    
}
extension ViewController: textFielfDelegate {
    
    func textFieldValue(value: String){
        self.messageLabel.text = value
    }
    
}
