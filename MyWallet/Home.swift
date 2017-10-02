//
//  Home.swift
//  MyWallet
//
//  Created by cuscedu on 8/18/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

class Home: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var DATE_SHOW: UILabel!
    @IBOutlet weak var DATE: label!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var tableview: UITableView!
    
    let sectionTitles : [String] = ["Ngay1","Ngay2"]
    let s1data : [String] = ["row1","row2","row3"]
    let s2data : [String] = ["row4","row5","row6"]
    
    var sectiondata : [ Int : [String]] = [:]
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //====================================
        tableview.delegate = self
        tableview.dataSource = self
        
        sectiondata = [0 : s1data, 1 : s2data]
        
        // Do any additional setup after loading the view.
        //Khai bao ngay thang
        self.dateFormatter.dateFormat = "MM/yyyy"
        self.DATE.text = self.dateFormatter.string(from: Date())
        
        let calendar = Calendar.current
        let  components : DateComponents = (calendar as NSCalendar).components(.month, from: Date())
        self.stepper.value = Double(components.month!)
   
    }
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Chay stepper - +
    @IBAction func Tap_stepper(_ sender: AnyObject) {
        adjustDate()
    }
    // Tuy chinh Thang - +
    func  adjustDate() {
        let date = self.dateFormatter.date(from: self.DATE.text!)
        var components : DateComponents = (Calendar.current as NSCalendar).components(.month, from: date!)
        
        var steppedDate: Date? = nil
        if components.month! > Int(self.stepper.value)
        {
            steppedDate = (Calendar.current as NSCalendar).date(byAdding: .month, value: -1, to: date!, options: .searchBackwards)
        }
        else{
            steppedDate = (Calendar.current as NSCalendar).date(byAdding: .month, value: 1, to: date!, options: [])
        }
        components = (Calendar.current as NSCalendar).components(.month, from: steppedDate!)
        self.stepper.value = Double(components.month!)
        self.DATE.text = self.dateFormatter.string(from: steppedDate!)
    }
    
    //tabelview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (sectiondata[section]?.count)!
    }
    
  /* func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }*/
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
   
        let view = UIView()
        view.backgroundColor = UIColor.green
  
        let label = UILabel()
        label.text = sectionTitles[section]
       label.frame = CGRect(x: 45, y: 5, width: 100, height: 35 )
        view.addSubview(label)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = sectiondata[indexPath.section]![indexPath.row]
        return cell!
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


