//
//  WelcomeViewController.swift
//  Dropbox
//
//  Created by Sheta Chatterjee on 9/15/14.
//  Copyright (c) 2014 Sheta Chatterjee. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var onScroll: UIScrollView!
    @IBOutlet weak var viewy: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewy.sizeToFit()
        onScroll.contentSize = CGSizeMake(viewy.frame.width,viewy.frame.height)
        // Do any additional setup after loading the view.
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
