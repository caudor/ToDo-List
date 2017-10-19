//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by Christopher Richardson on 10/19/17.
//  Copyright © 2017 Chris.Richardson. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDos = createToDos()
    }
    
    func createToDos() -> [ToDo]{
        let eggs = ToDo()
        eggs.name = "Buy Eggs"
        eggs.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        // Don't need to add important because it is false by default
        
        let cheese = ToDo()
        cheese.name = "Eat some cheese"
     
        return [eggs, dog, cheese]
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell{
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCells", for: indexPath)
            let toDo = toDos[indexPath.row]
            if toDo.important{
                cell.textLabel?.text = "❗️" + toDo.name
            } else {
                cell.textLabel?.text = toDo.name
            }
            
            return cell
            
    }
    
    

    
}
