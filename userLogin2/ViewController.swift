//
//  ViewController.swift
//  userLogin2
//
//  Created by Paige Walters on 6/2/16.
//  Copyright © 2016 Paige Walters. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CreateAccount(sender: AnyObject) {
        
        FIRAuth.auth()?.createUserWithEmail(Username.text!, password: Password.text!, completion: {
            user, error in
            
            if error != nil{
                
              self.login()
                
            
                
            } else {
                
                print("User Created")
                
                self.login()
            }
        })
    }

    
    func login(){
        FIRAuth.auth()?.signInWithEmail(Username.text!, password: Password.text!, completion: {
            user, error in
            if error != nil{
                
                  print("Incorrect")
                
            } else {
                print("HAZAH!")
            }
        })
    }
}

