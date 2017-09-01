//
//  MessageDK.swift
//  MyWallet
//
//  Created by cuscedu on 8/22/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

class MessageDK: UIViewController {

    @IBOutlet weak var Message: label!
    
    var MessageInput = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Message.text = "Chào mừng " + " " + MessageInput
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
