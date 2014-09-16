//
//  settingsViewController.swift
//  Dropbox
//
//  Created by Sheta Chatterjee on 9/15/14.
//  Copyright (c) 2014 Sheta Chatterjee. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var scrolling: UIScrollView!
    //@IBOutlet weak var butt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  scrolling.contentSize = CGSize(width: 320, height: 900)
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
