//
//  ViewController.swift
//  Login Lab
//
//  Created by Flint on 4/3/19.
//  Copyright © 2019 Flint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var username: UITextField!
    
    @IBAction func forgotUsernameAct(_ sender: Any) {
        performSegue(withIdentifier: "ViewSegue", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordAct(_ sender: Any) {
        performSegue(withIdentifier: "ViewSegue", sender: forgotPasswordButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = username.text
    
        guard let sender = sender as? UIButton else {return}
    
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
        
    }
    
    @IBAction func unwindToVCOne(unwindSegue: UIStoryboardSegue) {
        
    }
    
    

}

