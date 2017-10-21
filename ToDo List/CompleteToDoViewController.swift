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
    var selectedToDo : ToDoCoreData?   // it will default setting it to nil
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo?.name
    }

    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as?
            AppDelegate)?.persistentContainer.viewContext{
            if let theToDo = selectedToDo{
                context.delete(theToDo)
                navigationController?.popViewController(animated: true)
            }
        }
        
        /*
        var index = 0
        for toDo in previousVC.toDos{
            if toDo.name == selectedToDo.name{
                previousVC.toDos.remove(at: index)
                previousVC.tableView.reloadData()
                navigationController?.popViewController(animated: true)
                break
            }
            index += 1
        }
 */
        
    }
    
}
