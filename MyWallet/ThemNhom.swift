//
//  ThemNhom.swift
//  MyWallet
//
//  Created by cuscedu on 9/30/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

class ThemNhom: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBAction func BtAddNhomThu(_ sender: AnyObject) {
        let PopupView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "IdNhomThu") as! PopUPNhomThu
        print("OK khoi tao thanh cong !")
        
        self.addChildViewController(PopupView)
        PopupView.view.frame = self.view.frame
        self.view.addSubview(PopupView.view)
        PopupView.didMove(toParentViewController: self)
    }

    @IBAction func BtAddNhomChi(_ sender: AnyObject) {
        let PopupView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "IdNhomChi") as! PopupNhomChi
        print("OK khoi tao thanh cong !")
        
        self.addChildViewController(PopupView)
        PopupView.view.frame = self.view.frame
        self.view.addSubview(PopupView.view)
        PopupView.didMove(toParentViewController: self)
    }
}
