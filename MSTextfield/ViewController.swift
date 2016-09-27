//
//  ViewController.swift
//  MSTextfield
//
//  Created by marco sportillo on 27/09/2016.
//  Copyright © 2016 me.sportillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {


    @IBOutlet weak var textF: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let x = Bundle.main.loadNibNamed("MSTextfield", owner: nil, options: nil)?[0] as! MSTextfield
        self.textF.addSubview(x)
        
        x.icon.image = UIImage(named: "user")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

