//
//  ThemKhoanThu.swift
//  MyWallet
//
//  Created by cuscedu on 8/28/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

class ThemKhoanThu: UIViewController {
    @IBOutlet weak var Txt_Type: textfield!
    @IBOutlet weak var Txt_Money: UITextField!
    @IBOutlet weak var Txt_Calendar: UITextField!
    @IBOutlet weak var Txt_note: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Tapped_backbutton(sender: AnyObject) {
         dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func Tapped_dropdown(sender: AnyObject) {
        
        var myActionSheet = UIAlertController(title: "Chon nhom", message: nil, preferredStyle: .ActionSheet)
       
        let salary = UIAlertAction(title: "Lương", style: UIAlertActionStyle.Default){
            (ACTION) in
            self.Txt_Type.text = "Lương"
        }
        let bonus = UIAlertAction(title: "Thưởng", style: UIAlertActionStyle.Default){
            (ACTION) in
            self.Txt_Type.text = "Thưởng"
        }
        
        let close = UIAlertAction(title: "Đóng", style: .Cancel, handler:{
             action in print("close")
        })
        
        myActionSheet.addAction(salary)
        myActionSheet.addAction(bonus)
        myActionSheet.addAction(close)
        
        presentViewController(myActionSheet, animated: true, completion: nil)
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
