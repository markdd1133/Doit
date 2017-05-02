//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by Sheng Chi Chen on 2017/5/2.
//  Copyright © 2017年 Sheng Chi Chen. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task = Task()
    var previousVC = TasksViewController()
    
    @IBOutlet weak var taskLabel: UILabel!
    @IBAction func completeTapped(_ sender: UIButton) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important{
            taskLabel.text = "❗️\(task.name)"
        }else{
            taskLabel.text = task.name
        }
    }

}
