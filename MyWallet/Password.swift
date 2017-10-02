//
//  Password.swift
//  MyWallet
//
//  Created by cuscedu on 8/18/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

class Password: UIViewController {
    
    @IBOutlet weak var Txt_Pass: textfield!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondview:DangNhap = segue.destination as! DangNhap
        secondview.TxtPass = Txt_Pass.text!
    }
    @IBAction func Tap_buttonback(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
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
