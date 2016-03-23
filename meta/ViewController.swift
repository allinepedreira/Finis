//
//  ViewController.swift
//  meta
//
//  Created by Alline Pedreira on 23/03/16.
//  Copyright © 2016 Alline Pedreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var pageImages: NSArray!
    var pageViewController: UIPageViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        pageImages = NSArray(objects: "screen1","screen2","screen3")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return pageImages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }


}
