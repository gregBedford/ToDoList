//
//  CompleteTaskViewController.swift
//  ToDoList
//
//  Created by Greg on 4/14/17.
//  Copyright © 2017 gregMakesApps. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    
    @IBOutlet weak var taskLabel: UILabel!
    
    
    
    var task = Task()
    
    
    
    @IBAction func completeTask(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            
            taskLabel.text = "🔥 \(task.name)"
            
        } else {
            
            taskLabel.text = task.name
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
