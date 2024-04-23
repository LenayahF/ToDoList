//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by 11k on 4/23/24.
//

import UIKit

class AddToDoViewController: UIViewController {
    var ToDoTableViewController: ToDoTableViewController? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let newToDo = ToDo()
        newToDo.priority = prioritySegment.selectedSegmentIndex
        newToDo.priority = prioritySegment.selectedSegmentIndex
        
        if let name = nameTextField.text{
            newToDo.name = name
        }
        ToDoTableViewController?.toDos.append(newToDo)
        ToDoTableViewController?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
  
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
  
}
  
