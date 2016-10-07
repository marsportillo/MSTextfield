//
//  MSTextfield.swift
//  MSTextfield
//
//  Created by marco sportillo on 27/09/2016.
//  Copyright © 2016 me.sportillo. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class MSTextfield: NibDesignable, UITextFieldDelegate {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var border: UIImageView!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var error: UILabel!

    @IBInspectable var iconBorder: CGFloat = 1.0
    @IBInspectable var borderColor: UIColor = UIColor.red
    @IBInspectable var iconImage:  UIImage = UIImage()
    @IBInspectable var placeholder: String = ""
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        prepareForInterfaceBuilder()
        self.border.backgroundColor = borderColor
        self.icon.image = iconImage
        self.textfield.placeholder = placeholder
    }
    
    override public func prepareForInterfaceBuilder() {
        self.border.backgroundColor = borderColor
        self.icon.image = iconImage
        self.textfield.placeholder = placeholder
    }
}
