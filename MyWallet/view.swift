//
//  view.swift
//  MyWallet
//
//  Created by cuscedu on 8/18/17.
//  Copyright © 2017 cuscedu. All rights reserved.
//

import UIKit

@IBDesignable

class view: UIView {

    
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
