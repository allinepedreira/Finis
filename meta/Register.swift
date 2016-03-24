//
//  Register.swift
//  meta
//
//  Created by Alline Pedreira on 21/03/16.
//  Copyright © 2016 Alline Pedreira. All rights reserved.
//

import UIKit

class Register: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var user = User(name: "Arthur Carvalho", email: "arthurcarvalho@gmail.com", password: "sdasdas")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        email.text = String()
        password.text = String()
        
        name.setValue(UIColor(red: CGFloat(247.0/255.0), green: CGFloat(247.0/255.0), blue: CGFloat(247.0/255.0), alpha: CGFloat(1.0)), forKeyPath: "_placeholderLabel.textColor")
        email.setValue(UIColor(red: CGFloat(247.0/255.0), green: CGFloat(247.0/255.0), blue: CGFloat(247.0/255.0), alpha: CGFloat(1.0)), forKeyPath: "_placeholderLabel.textColor")
        password.setValue(UIColor(red: CGFloat(247.0/255.0), green: CGFloat(247.0/255.0), blue: CGFloat(247.0/255.0), alpha: CGFloat(1.0)), forKeyPath: "_placeholderLabel.textColor")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

    
    func isValidEmail(testStr: String) -> Bool {
        let emailRegEx = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluateWithObject(testStr)
    }
    
    
    func isValidPassword(password: String) -> Bool {
        let number = password.characters.count
        
        if number < 8 {
            return false
        } else {
            return true
        }
    }
    
    
    @IBAction func signUp(sender: AnyObject) {
        let namesav = name.text
        let emailsav = email.text
        let passwordsav = password.text
        
        if (namesav!.isEmpty||emailsav!.isEmpty||passwordsav!.isEmpty) {
           
            let alert = UIAlertController(title: "Sign up failed", message: "You must fill in all of the fields.", preferredStyle: UIAlertControllerStyle.Alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            // show the alert
            self.presentViewController(alert, animated: true, completion: nil)
            
        } else {
        
            if isValidEmail(email.text!) == false {
            
                let alert = UIAlertController(title: "Sign up failed", message: "Please enter a valid email address.", preferredStyle: UIAlertControllerStyle.Alert)
            
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
                // show the alert
                self.presentViewController(alert, animated: true, completion: nil)
                
            } else {
            
                    if isValidPassword(password.text!) == true {
                        user = User(name: name.text!, email: email.text!, password: password.text!)
                        performSegueWithIdentifier("registercomp", sender: self)
                        
                    } else {
            
                            let alert = UIAlertController(title: "Sign up failed", message: "Your password must be at least 8 characters long.", preferredStyle: UIAlertControllerStyle.Alert)
            
                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
                            // show the alert
                            self.presentViewController(alert, animated: true, completion: nil)
                    }
            }
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "registercomp" {
            let destination:Login=segue.destinationViewController as! Login
            destination.user2 = user
        }
    }

}
