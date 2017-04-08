//
//  keyboardExit.swift
//  ToDoList
//
//  Created by Greg on 4/8/17.
//  Copyright © 2017 gregMakesApps. All rights reserved.
//

//import Foundation
import UIKit


extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
