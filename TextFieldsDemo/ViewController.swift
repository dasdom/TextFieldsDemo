//
//  ViewController.swift
//  TextFieldsDemo
//
//  Created by dasdom on 30.11.14.
//  Copyright (c) 2014 Dominik Hauser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField.tag == 101 {
            secondTextField.becomeFirstResponder()
        } else if textField.tag == 102 {
            resultItem.text = "\\o/ Item was saved! \\o/"
            textField.resignFirstResponder()
        }
        return false
    }

}

