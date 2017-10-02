//
//  label.swift
//  MyWallet
//
//  Created by cuscedu on 8/17/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

@IBDesignable

class label: UILabel {
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
}
