//
//  ViewController.swift
//  meta
//
//  Created by Alline Pedreira on 23/03/16.
//  Copyright © 2016 Alline Pedreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource{
    
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
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        var viewController = viewController as! TheLastViewController
        var index = viewController.pageIndex as Int
        
        if(index == 0 || index == NSNotFound){
            return nil
        }
        index --
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return pageImages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }


}
