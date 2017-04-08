//
//  TasksViewController.swift
//  ToDoList
//
//  Created by Greg on 4/8/17.
//  Copyright © 2017 gregMakesApps. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var toDoList: UITableView!
    
    var tasks: [Task] = []

    
    func makeTasks() -> [Task]{
        
        let task1 = Task()
        task1.name = "Wash Dishes"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Make iOS app"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Learn Adobe CC"
        task3.important = true
        
        return[task1, task2, task3]
    }
    
    
    @IBAction func addTask(_ sender: Any) {
        
        performSegue(withIdentifier: "goToTask", sender: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        let task = tasks[indexPath.row]
        
        if task.important {
            
            cell.textLabel?.text = "🔥 \(task.name)"
            
        } else {
            
            cell.textLabel?.text = task.name
        }
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! AddTaskViewController
        
        nextVC.prevVC = self
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        tasks = makeTasks()
        
        toDoList.dataSource = self
        
        toDoList.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
