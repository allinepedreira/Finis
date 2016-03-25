//
//  Login.swift
//  meta
//
//  Created by Alline Pedreira on 21/03/16.
//  Copyright © 2016 Alline Pedreira. All rights reserved.
//

import UIKit

class Login: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet var background: UIImageView!

    
    // Fazer aparecer imagens para o background aleatoriamente
    let images: [String] = ["bg1", "bg2", "bg3", "bg4", "bg5"]
    var user2 = User(name: "Arthur Carvalho", email: "arthurcarvalho@gmail.com", password: "outback2")
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        ScrollView.setContentOffset(CGPoint(x: 0, y: 170), animated: true)
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        ScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text1.setValue(UIColor(red: CGFloat(247.0/255.0), green: CGFloat(247.0/255.0), blue: CGFloat(247.0/255.0), alpha: CGFloat(1.0)), forKeyPath: "_placeholderLabel.textColor")
        text2.setValue(UIColor(red: CGFloat(247.0/255.0), green: CGFloat(247.0/255.0), blue: CGFloat(247.0/255.0), alpha: CGFloat(1.0)), forKeyPath: "_placeholderLabel.textColor")
        
        imageView.animationImages = [
        
            UIImage(named: "image1")!,
            UIImage(named: "image2")!,
            UIImage(named: "image3")!
            
        ]
        
        imageView.animationDuration = 3
        imageView.startAnimating()
            
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    
    //MARK: Processamentos
    
    
    @IBAction func login(sender: AnyObject) {
        if shouldPerformSegueWithIdentifier("start", sender:self) == true {
            performSegueWithIdentifier("start" ,sender: self)
        }
    }
    
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "register" {
            performSegueWithIdentifier("register", sender: self)
            
        } else {
            if identifier == "back" {
                performSegueWithIdentifier("back", sender: self)
                
            } else {
                if (text1.text!.isEmpty||text2.text!.isEmpty) {
                    let alert = UIAlertController(title: "Error", message: "Please insert your email address and password.", preferredStyle: UIAlertControllerStyle.Alert)
            
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
                    // show the alert
                    self.presentViewController(alert, animated: true, completion: nil)
                    
                } else {
                    if identifier == "start" {
                        print("cu")
                        
                        if text1.text != user2.email {
                            let alert1 = UIAlertController(title: "Error", message: "Your email address is not registered.", preferredStyle: UIAlertControllerStyle.Alert)
                
                            // add an action (button)
                            alert1.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                
                            // show the alert
                            self.presentViewController(alert1, animated: true, completion: nil)
                
                            return false
                            
                        } else {
                                if text2.text != user2.password {
                                        let alert2 = UIAlertController(title: "Please try again", message: "This email and password do not match.", preferredStyle: UIAlertControllerStyle.Alert)
                    
                                        // add an action (button)
                                        alert2.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                    
                                        // show the alert
                                        self.presentViewController(alert2, animated: true, completion: nil)
                                        return false
                                    
                                } else {
                                        return true
                                        }
            }
            
        }
        return true
    }
        return true
    }
        return true
    }
    return true
    }
    
    
}
    
