//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Christopher Richardson on 10/20/17.
//  Copyright © 2017 Chris.Richardson. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        toDo.name = titleTextField.text!
        toDo.important = importantSwitch.isOn
        
        previousVC.toDos.append(toDo)
        //Now table view needs to know there is an update
        previousVC.tableView.reloadData()
    }
}
