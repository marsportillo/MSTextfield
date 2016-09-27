//
//  MSTextfield.swift
//  MSTextfield
//
//  Created by marco sportillo on 27/09/2016.
//  Copyright © 2016 me.sportillo. All rights reserved.
//

import Foundation
import UIKit

class MSTextfield: UIView,UITextFieldDelegate {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var border: UIImageView!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var error: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textfield.delegate = self
        self.textfield.placeholder = "Name"
        self.error.isHidden = true
        //self.title.isHidden = true
        self.title.alpha = 0
        self.title.text = self.textfield.placeholder
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.title.isHidden = false

        UIView.animate(withDuration: 0.8) {
            self.title.alpha = 1
            self.border.frame.size.height = 2
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //self.title.isHidden = true
        UIView.animate(withDuration: 0.8) {
            self.title.alpha = 0
            self.border.frame.size.height = 1
        }
    }
    
    
}
