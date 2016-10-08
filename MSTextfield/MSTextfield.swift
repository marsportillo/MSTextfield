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
    @IBInspectable var iconBackground: UIColor = UIColor.clear
    @IBInspectable var iconImage:  UIImage = UIImage()
    
    //Inspectable for textfield
    @IBInspectable var placeholder: String = ""
    @IBInspectable var placeholderColor: UIColor = UIColor.lightGray
    
    //Inspectable for  Title
    @IBInspectable var titleLabel: String = ""
    
    //Inspectable for Error
    @IBInspectable var errorColor: UIColor = UIColor.red
    
    override func layoutSubviews() {
        super.layoutSubviews()
        prepareForInterfaceBuilder()
        
        self.icon.image = iconImage
        self.textfield.placeholder = placeholder
        
        self.icon.backgroundColor = iconBackground
        self.textfield.attributedPlaceholder = NSAttributedString(string:placeholder, attributes:[NSForegroundColorAttributeName:placeholderColor])
        
        self.title.text = placeholder
        if(titleLabel.isEmpty) {
            self.title.text = placeholder
        }
        else {
            self.title.text = titleLabel
        }
        
        self.error.textColor = errorColor
    }
    
    override public func prepareForInterfaceBuilder() {
        self.icon.image = iconImage
        self.textfield.placeholder = placeholder
        self.icon.backgroundColor = iconBackground
        self.textfield.attributedPlaceholder = NSAttributedString(string:placeholder, attributes:[NSForegroundColorAttributeName:placeholderColor])
       
        if(titleLabel.isEmpty) {
            self.title.text = placeholder
        }
        else {
            self.title.text = titleLabel
        }
        
        self.error.textColor = errorColor
    }
    
}
