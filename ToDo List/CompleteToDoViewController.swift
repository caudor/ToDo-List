//
//  CompleteToDoViewController.swift
//  ToDo List
//
//  Created by Christopher Richardson on 10/20/17.
//  Copyright © 2017 Chris.Richardson. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo.name
    }

    @IBAction func completeTapped(_ sender: Any) {
        var index = 0
        for toDo in previousVC.toDos{
            if toDo.name == selectedToDo.name{
                print("We found it-- \(toDo.name) at index \(index)")
            }
            index += 1
        }
    }
    
}
