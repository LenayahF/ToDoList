//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by 11k on 4/22/24.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos:[ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        let toDo1 = ToDo()
        toDo1.name = "Write chapter one of iOS 14 book"
        toDo1.priority = 0
        let toDo2 = ToDo()
        toDo2.name = "Edit iOS 14 book"
        toDo2.priority = 1
        
        toDos.append(toDo1)
        toDos.append(toDo2)

    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let selectedToDo = toDos[indexPath.row]
        
        if selectedToDo.priority == 1{
            cell.textLabel?.text = "!" + selectedToDo.name
        }
        else if selectedToDo.priority == 2{
            cell.textLabel?.text = "!!" + selectedToDo.name
        }
        else{
            cell.textLabel?.text = selectedToDo.name
        }
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        if let addToDoViewController = segue.destination as?
            AddToDoViewController{
            addToDoViewController.ToDoTableViewController = self
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
