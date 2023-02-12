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
    
    @IBOutlet var forgotPassword: UIButton!
    
    @IBOutlet var forgotUsername: UIButton!
    
    @IBAction func forgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
        
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
  
    
    @IBAction func clickLogin(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

     segue.destination.navigationItem.title = usernameTextField.text
        
        
        
        guard let sender = sender as? UIButton else {return}
         
          if sender == forgotPassword {
               segue.destination.navigationItem.title = "Forgot Password"
         } else if sender == forgotUsername {
               segue.destination.navigationItem.title = "Forgot Username"
         } else {
            segue.destination.navigationItem.title = usernameTextField.text
         }
       
    }
    
}

