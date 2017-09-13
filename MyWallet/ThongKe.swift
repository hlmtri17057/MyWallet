//
//  ThongKe.swift
//  MyWallet
//
//  Created by cuscedu on 9/1/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

class ThongKe: UIViewController , UITableViewDelegate, UITableViewDataSource, TableViewCellDelegate {
    @IBOutlet weak var tableview: UITableView!

    var s1data : [String] = ["row1","row2","row3","row4"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Tap_backbutton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    //tabelview
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       return s1data.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return s1data.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CellThongKe") as! CellThongKe
        
        cell.lb_chi.text = s1data[indexPath.row]
        cell.lb_date.text = s1data[indexPath.row]
        cell.lb_duthang.text = s1data[indexPath.row]
        cell.lb_thu.text = s1data[indexPath.row]
    
        cell.delegate = self
        cell.index = indexPath
        
        //cell?.textLabel?.text = s1data[indexPath.row]

        return cell
    }
    
    func deleteRowAtIndex(index: Int) {
        s1data.removeAtIndex(index)
        tableview.reloadData()
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
