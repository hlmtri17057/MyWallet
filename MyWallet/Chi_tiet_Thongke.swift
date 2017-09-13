//
//  Chi_tiet_Thongke.swift
//  MyWallet
//
//  Created by cuscedu on 9/5/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

class Chi_tiet_Thongke: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var DATE: label!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var tableview: UITableView!
    
    let sectionTitles : [String] = ["Ngay1","Ngay2"]
    let s1data : [String] = ["row1","row2","row3"]
    let s2data : [String] = ["row4","row5","row6"]
    
    var sectiondata : [ Int : [String]] = [:]
    var dateFormatter = NSDateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //====================================
        tableview.delegate = self
        tableview.dataSource = self
        
        sectiondata = [0 : s1data, 1 : s2data]
        
        // Do any additional setup after loading the view.
        //Khai bao ngay thang
        self.dateFormatter.dateFormat = "MM/yyyy"
        self.DATE.text = self.dateFormatter.stringFromDate(NSDate())
        
        let calendar = NSCalendar.currentCalendar()
        let  components : NSDateComponents = calendar.components(.Month, fromDate: NSDate())
        self.stepper.value = Double(components.month)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Chay stepper - +
    @IBAction func Tap_stepper(sender: AnyObject) {
        adjustDate()
    }
    // Tuy chinh Thang - +
    func  adjustDate() {
        let date = self.dateFormatter.dateFromString(self.DATE.text!)
        var components : NSDateComponents = NSCalendar.currentCalendar().components(.Month, fromDate: date!)
        
        var steppedDate: NSDate? = nil
        if components.month > Int(self.stepper.value)
        {
            steppedDate = NSCalendar.currentCalendar().dateByAddingUnit(.Month, value: -1, toDate: date!, options: .SearchBackwards)
        }
        else{
            steppedDate = NSCalendar.currentCalendar().dateByAddingUnit(.Month, value: 1, toDate: date!, options: [])
        }
        components = NSCalendar.currentCalendar().components(.Month, fromDate: steppedDate!)
        self.stepper.value = Double(components.month)
        self.DATE.text = self.dateFormatter.stringFromDate(steppedDate!)
    }
    
    //tabelview
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (sectiondata[section]?.count)!
    }
    
    /* func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
     return sectionTitles[section]
     }*/
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView()
        view.backgroundColor = UIColor.greenColor()
        
        let label = UILabel()
        label.text = sectionTitles[section]
        label.frame = CGRect(x: 45, y: 5, width: 100, height: 35 )
        view.addSubview(label)
        
        return view
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = sectiondata[indexPath.section]![indexPath.row]
        return cell!
    }
    
    @IBAction func Tapped_buttonback(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
