//
//  ViewController.swift
//  MSTextfield
//
//  Created by marco sportillo on 27/09/2016.
//  Copyright © 2016 me.sportillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var textFieldNew: MSTextfield!


    @IBOutlet weak var textF: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        textFieldNew.icon.image = UIImage(named: "user")
//        textFieldNew.textfield.placeholder = "username"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Textfield")
    }
}

