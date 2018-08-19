//
//  ViewController.swift
//  TestTextFields
//
//  Created by John McNiffe on 19/08/2018.
//  Copyright © 2018 John McNiffe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var outputLabel: UILabel!
    
    
    @IBAction func goButtonPressed(_ sender: Any) {
        
        outputLabel.text = textField.text
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField.delegate = self
        
        // hide keyboard
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        gestureRecognizer.cancelsTouchesInView = false
        view.addGestureRecognizer(gestureRecognizer)
    }


    @objc func hideKeyboard(_ gestureRecognizer: UIGestureRecognizer) {
        textField.resignFirstResponder()
        print("Touching!")
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
}

