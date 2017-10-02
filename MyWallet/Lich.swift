//
//  Lich.swift
//  MyWallet
//
//  Created by VPN on 10/2/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit
import JTAppleCalendar

//let ngay = DateFormatter()

class Lich: UIViewController, JTAppleCalendarViewDataSource, JTAppleCalendarViewDelegate{
    
    @IBOutlet weak var calendarView: JTAppleCalendarView!
    @IBOutlet weak var yearCalendar : UILabel!
    @IBOutlet weak var monthCalendar : UILabel!
    
    let formatter = DateFormatter()
    //let day = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // Do any additional setup after loading the view.
        setupCalendarView()
    }
    func setupCalendarView() {
        //setup labels
        calendarView.visibleDates {(visibleDates) in
        
        self.setupViewOfCalendar(from: visibleDates)
        
        }
    }
    
    func setupViewOfCalendar(from visibleDates: DateSegmentInfo) {
        
        let dateCalendar = visibleDates.monthDates.first!.date
        
        self.formatter.dateFormat = "yyyy"
        self.yearCalendar.text = self.formatter.string(from: dateCalendar)
        
        self.formatter.dateFormat = "MM"
        self.monthCalendar.text = self.formatter.string(from: dateCalendar)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
        
        formatter.dateFormat = "yyyy MM dd"
        formatter.timeZone = Calendar.current.timeZone
        formatter.locale = Calendar.current.locale
        
        
        let startDate = formatter.date(from:"2017 01 01")!
        let endDate = formatter.date(from:"2017 12 31")!
        
        let parameters = ConfigurationParameters(startDate: startDate, endDate: endDate)
        return parameters
    }
    
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell{
        
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "CustomCell_Lich", for: indexPath) as! CustomCell_Lich
        
        cell.datelabel.text = cellState.text
        return cell
    }
    func calendar(_ calendar: JTAppleCalendarView, didScrollToDateSegmentWith visibleDates: DateSegmentInfo) {
       setupViewOfCalendar(from: visibleDates)
    }
}

    
   

//
/*extension ViewController: JTAppleCalendarViewDelegate, JTAppleCalendarViewDataSource{
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
    
        ngay.dateFormat = "yyyy MM dd"
        ngay.timeZone = Calendar.current.timeZone
        ngay.locale = Calendar.current.locale
        
        
        let startDate = ngay.date(from:"2017 01 01")!
        let endDate = ngay.date(from:"2017 12 31")!
        
        let parameters = ConfigurationParameters(startDate: startDate, endDate: endDate)
        return parameters
    }
    
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell{
        
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        cell.dateLable.text = cellState.text
        
        return cell
    }
}*/
