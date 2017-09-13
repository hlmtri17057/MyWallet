//
//  CellThongKe.swift
//  MyWallet
//
//  Created by cuscedu on 9/1/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

protocol TableViewCellDelegate {
    func deleteRowAtIndex(index:Int)
}


class CellThongKe: UITableViewCell {

    @IBOutlet weak var lb_date: label!
    @IBOutlet weak var lb_thu: label!
    @IBOutlet weak var lb_chi: label!
    @IBOutlet weak var lb_duthang: label!
    
    var index:NSIndexPath?
    var delegate:TableViewCellDelegate?
   // var delegate : UITableViewDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
