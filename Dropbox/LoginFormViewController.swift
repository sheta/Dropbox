//
//  LoginFormViewController.swift
//  Dropbox
//
//  Created by Sheta Chatterjee on 9/15/14.
//  Copyright (c) 2014 Sheta Chatterjee. All rights reserved.
//

import UIKit

class LoginFormViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
   
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //init
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
        scrollView.contentSize = CGSize(width: 320, height: 1000)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
       // scrollView.frame.origin.y -= 100
          scrollView.contentInset = UIEdgeInsets(top: -90, left: 0, bottom: 0, right: 0)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
    
    
    
    @IBAction func onLoginButton(sender: AnyObject) {
        indicator.startAnimating()
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        delay(2, closure: { () -> () in
            self.indicator.stopAnimating()
           
            if ((self.emailField.text != "sheta" && self.emailField.text != "") || (self.passwordField.text != "pass" && self.passwordField.text != "")){
                UIAlertView(title: "Oops", message: "Wrong email or password!", delegate: nil, cancelButtonTitle: "OK").show()
            } else if (self.emailField.text == "" || self.passwordField.text == ""){
                UIAlertView(title: "Oops", message: "Empty Email or Password!", delegate: nil, cancelButtonTitle: "OK").show()
            }else{
                self.performSegueWithIdentifier("loginSegue", sender: self)
            }
            
            
            
            
        })
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
