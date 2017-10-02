//
//  ThemKhoanChi.swift
//  MyWallet
//
//  Created by cuscedu on 8/28/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

class ThemKhoanChi: UIViewController {

    @IBOutlet weak var Txt_Type: UITextField!
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
    
    @IBAction func dropdown_button(_ sender: AnyObject) {
        let myActionSheet = UIAlertController(title: "CHỌN LOẠI CHI", message: nil, preferredStyle: .actionSheet)
        let rent_house = UIAlertAction(title: "Tiền nhà", style: UIAlertActionStyle.default){
            (ACTION) in
            self.Txt_Type.text = "Tiền nhà"
        }
        let money_food = UIAlertAction(title: "Tiền ăn", style: UIAlertActionStyle.default){
            (ACTION) in
            self.Txt_Type.text = "Tiền ăn"
        }
        let tuition_fee = UIAlertAction(title: "Học phí", style: UIAlertActionStyle.default){
            (ACTION) in
            self.Txt_Type.text = "Học phí"
        }
        let gasoline = UIAlertAction(title: "Xăng", style: UIAlertActionStyle.default){
            (ACTION) in
            self.Txt_Type.text = "Xăng"
        }
        let others = UIAlertAction(title: "Mua sắm, cafe, du lịch", style: UIAlertActionStyle.default){
            (ACTION) in
            self.Txt_Type.text = "Mua sắm, cafe, du lịch"
        }
        let luckymoney = UIAlertAction(title: "Tiền mừng các loại", style: UIAlertActionStyle.default){
            (ACTION) in
            self.Txt_Type.text = "Tiền mừng các loại"
        }
        let close = UIAlertAction(title: "Đóng", style: .cancel, handler:{
            action in print("close")
        })
        
        myActionSheet.addAction(rent_house)
        myActionSheet.addAction(money_food)
        myActionSheet.addAction(tuition_fee)
        myActionSheet.addAction(gasoline)
        myActionSheet.addAction(others)
        myActionSheet.addAction(luckymoney)
        myActionSheet.addAction(close)
        
        present(myActionSheet, animated: true, completion: nil)
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
