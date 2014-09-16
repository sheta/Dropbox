//
//  LoginInitViewController.swift
//  Dropbox
//
//  Created by Sheta Chatterjee on 9/15/14.
//  Copyright (c) 2014 Sheta Chatterjee. All rights reserved.
//

import UIKit

class LoginInitViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var loginScroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
       loginScroll.delegate = self
        loginScroll.contentSize = CGSize(width: 320, height: 1850)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
