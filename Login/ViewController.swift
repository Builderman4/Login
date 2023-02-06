//
//  ViewController.swift
//  Login
//
//  Created by Ibrahim Syed on 2023-01-30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet var usernameTextField: UITextField!
    
    @IBAction func unwindToLogin(unwindSegue: UIStoryboardSegue) {
        
    }
    
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     segue.destination.navigationItem.title = usernameTextField.text
        
    }
    
}

