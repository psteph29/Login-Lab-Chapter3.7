//
//  ViewController.swift
//  Login Lab - Chapter 3.7
//
//  Created by Paige Stephenson on 2/7/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameEntry: UITextField!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title =
            "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userNameEntry.text
        }
    }

    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "loginToLandingView", sender: sender)
    }
    
    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "loginToLandingView", sender: sender)
    }
    
    
}

