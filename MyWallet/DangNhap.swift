//
//  DangNhap.swift
//  MyWallet
//
//  Created by cuscedu on 8/17/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

class DangNhap: UIViewController {
    @IBOutlet weak var TxtPassword: textfield!
    
    var TxtPass = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TxtPassword.text = TxtPass
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Tap_XacNhanDangNhap(sender: AnyObject) {
        guard TxtPassword.text != TxtPass else {
            //show message (run on UIViewController only)        
            let alert = UIAlertController(title: "Alert", message: " Mật Khẩu Sai", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: { action in
            print("Click of default button")
        }))
            self.presentViewController(alert, animated: true, completion: nil);  return  }}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
//show message (run on UIViewController only) 
   
}
