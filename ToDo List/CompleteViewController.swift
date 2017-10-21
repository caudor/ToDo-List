//
//  CompleteViewController.swift
//  ToDo List
//
//  Created by Christopher Richardson on 10/20/17.
//  Copyright © 2017 Chris.Richardson. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo.name
    }

    @IBAction func completeTapped(_ sender: Any) {
       /*
        // loop through to find any references to this toDo
        var index = 0
        for toDo in previousVC.toDos{
            if toDo.name == selectedToDo.name{
                previousVC.toDos.remove(at: index)
                previousVC.tableView.reloadData()
                navigationController?.popViewController(animated: true)
                break  // found it, go ahead and get out
            }
            index += 1
 
        } */
 
    }
 
}
