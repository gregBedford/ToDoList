//
//  AddTaskViewController.swift
//  ToDoList
//
//  Created by Greg on 4/8/17.
//  Copyright © 2017 gregMakesApps. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var taskNameTextfield: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var prevVC = TasksViewController()
    
    
    @IBAction func addTaskButton(_ sender: Any) {
        
        // Create task from text field outlet
        
        let task = Task()
        
        task.name = taskNameTextfield.text!
        
        task.important = importantSwitch.isOn
        
        // add new task to the array in previous view controller
        
        prevVC.tasks.append(task)
        
        prevVC.toDoList.reloadData()
        
        navigationController!.popViewController(animated: true)
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()

        self.taskNameTextfield.delegate = self;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
