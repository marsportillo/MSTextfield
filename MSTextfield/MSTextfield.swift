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
    //IBOutlet
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var border: UIImageView!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var error: UILabel!
    
    //Inspectable for icon
    @IBInspectable var backgroundIcon: UIColor = UIColor.clear
    @IBInspectable var iconImage:  UIImage = UIImage()

    //Inspetacable for border
    @IBInspectable var borderColor: UIColor = UIColor.red
    
    //Inspectable for textfield
    @IBInspectable var placeholder: String = ""
    @IBInspectable var placeholderColor: UIColor = UIColor.lightGray
    
    override func layoutSubviews() {
        super.layoutSubviews()
        prepareForInterfaceBuilder()
        
        self.icon.image = iconImage
        self.textfield.placeholder = placeholder
        
        self.icon.backgroundColor = backgroundIcon
        self.textfield.attributedPlaceholder = NSAttributedString(string:placeholder,
                                                               attributes:[NSForegroundColorAttributeName:placeholderColor])
        self.border.backgroundColor = borderColor
        
    }
    
    override public func prepareForInterfaceBuilder() {
        self.border.backgroundColor = borderColor
        self.icon.image = iconImage
        self.textfield.placeholder = placeholder
        self.icon.backgroundColor = backgroundIcon
        self.textfield.attributedPlaceholder = NSAttributedString(string:placeholder,
                                                                  attributes:[NSForegroundColorAttributeName:placeholderColor])
    }
}
