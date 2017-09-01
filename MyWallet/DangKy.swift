//
//  DangKy.swift
//  MyWallet
//
//  Created by cuscedu on 8/18/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

class DangKy: UIViewController {

    @IBOutlet weak var TaikhoanDK: textfield!
    @IBOutlet weak var MatkhauDK: textfield!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var secondview:MessageDK = segue.destinationViewController as! MessageDK
        secondview.MessageInput = TaikhoanDK.text!
    }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
