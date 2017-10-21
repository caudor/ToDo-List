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
/*
        let toDo = ToDo()
        
        /*this is bad practice. What is proper way to unwrap?
        toDo.name = titleTextField!*/
        // better
        if let titleText = titleTextField.text{
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
            
            previousVC.toDos.append(toDo)
      
            //Now table view needs to know there is an update
            previousVC.tableView.reloadData()
            
            //Go back to TableViewController
            navigationController?.popViewController(animated: true)
            // Push means go forward, Pop means to back to previous view controller
        }
 */
        if let context = (UIApplication.shared.delegate as?
            AppDelegate)?.persistentContainer.viewContext{
        
            let toDo = ToDoCoreData(entity: ToDoCoreData.entity(), insertInto: context)
            
            if let titleText = titleTextField.text{
                toDo.name = titleText
                toDo.important = importantSwitch.isOn
            }
            try? context.save()
            navigationController?.popViewController(animated: true)
        }
        
        
    }
}
