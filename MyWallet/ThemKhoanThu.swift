//
//  ThemKhoanThu.swift
//  MyWallet
//
//  Created by cuscedu on 8/28/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit
import JTAppleCalendar

class ThemKhoanThu: UIViewController{
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
    
    @IBAction func Tapped_backbutton(_ sender: AnyObject) {
         dismiss(animated: true, completion: nil)
    }
    @IBAction func Tapped_dropdown(_ sender: AnyObject) {
        
        let myActionSheet = UIAlertController(title: "CHỌN LOẠI THU", message: nil, preferredStyle: .actionSheet)
       
        let salary = UIAlertAction(title: "Lương", style: UIAlertActionStyle.default){
            (ACTION) in
            self.Txt_Type.text = "Lương"
        }
        let bonus = UIAlertAction(title: "Thưởng", style: UIAlertActionStyle.default){
            (ACTION) in
            self.Txt_Type.text = "Thưởng"
        }
        
        let close = UIAlertAction(title: "Đóng", style: .cancel, handler:{
             action in print("close")
        })
        
        myActionSheet.addAction(salary)
        myActionSheet.addAction(bonus)
        myActionSheet.addAction(close)
        
        present(myActionSheet, animated: true, completion: nil)
    }
    
    //Chon lich
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
