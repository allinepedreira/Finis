//
//  Login.swift
//  meta
//
//  Created by Alline Pedreira on 21/03/16.
//  Copyright © 2016 Alline Pedreira. All rights reserved.
//

import UIKit

class Login: UIViewController {
    
    
    @IBOutlet weak var text1: UITextField!
 
    @IBOutlet weak var text2: UITextField!
    
    var user2: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text1.setValue(UIColor(red: CGFloat(247.0/255.0), green: CGFloat(247.0/255.0), blue: CGFloat(247.0/255.0), alpha: CGFloat(1.0)), forKeyPath: "_placeholderLabel.textColor")
        text2.setValue(UIColor(red: CGFloat(247.0/255.0), green: CGFloat(247.0/255.0), blue: CGFloat(247.0/255.0), alpha: CGFloat(1.0)), forKeyPath: "_placeholderLabel.textColor")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    
    @IBAction func login(sender: AnyObject) {
        if shouldPerformSegueWithIdentifier("start", sender:self) == true
        {
            performSegueWithIdentifier("start" ,sender: self)
        }

    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
    {
        if (text1.text!.isEmpty||text2.text!.isEmpty) {
            
            let alert = UIAlertController(title: "My Title", message: "Todos os campos são obrigatórios", preferredStyle: UIAlertControllerStyle.Alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            // show the alert
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else {

        
        if identifier == "start"
        {
            if text1.text != user2.email
            {
                // uerrado.hidden=false
                
                let alert1 = UIAlertController(title: "My Title", message: "Invalid email", preferredStyle: UIAlertControllerStyle.Alert)
                
                // add an action (button)
                alert1.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                
                // show the alert
                self.presentViewController(alert1, animated: true, completion: nil)
                
                return false
            }
            else
            {
                if text2.text != user2.password
                {
                    // errado.hidden=false
                    // uerrado.hidden=true
                    
                    
                    let alert2 = UIAlertController(title: "My Title", message: "Invalid Password", preferredStyle: UIAlertControllerStyle.Alert)
                    
                    // add an action (button)
                    alert2.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                    
                    // show the alert
                    self.presentViewController(alert2, animated: true, completion: nil)
                    
                    return false
                }
                else
                {
                    return true
                }
            }
            
        }
        return true
    }
        return true
    }
    
}
    
