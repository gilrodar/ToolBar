//
//  ViewController.swift
//  ToolBar
//
//  Created by Gil Rodarte on 14/05/18.
//  Copyright © 2018 Gil Rodarte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toolbar:UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0,  width: self.view.frame.size.width, height: 30))
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem:    .flexibleSpace, target: nil, action: nil)
        
        let doneBtn: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonAction))
        
        toolbar.setItems([flexSpace, doneBtn], animated: false)
        toolbar.sizeToFit()
        
        textField.inputAccessoryView = toolbar
        
    }
    
    @objc func doneButtonAction() {
        self.view.endEditing(true)
    }

}

