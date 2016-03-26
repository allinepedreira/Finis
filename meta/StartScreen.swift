//
//  StartScreen.swift
//  meta
//
//  Created by Alline Pedreira on 21/03/16.
//  Copyright © 2016 Alline Pedreira. All rights reserved.
//

import UIKit

class StartScreen: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var tag: UIButton!
    
    
    @IBOutlet weak var addgoal: UITextField!
  
    @IBOutlet weak var insertgoal: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tag.hidden = true
        insertgoal.hidden = true 
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func add(sender: AnyObject) {
        tag.hidden = false
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
       tag.hidden = false
       insertgoal.hidden = false
        ScrollView.hidden = false
       ScrollView.setContentOffset(CGPoint(x: 0, y: 175), animated: true)
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
       tag.hidden = true
       insertgoal.hidden = true
        ScrollView.hidden = true 
        ScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
