//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by Sheng Chi Chen on 2017/5/2.
//  Copyright © 2017年 Sheng Chi Chen. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task:Task? = nil
    
    @IBOutlet weak var taskLabel: UILabel!
    @IBAction func completeTapped(_ sender: UIButton) {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context = appDel.persistentContainer.viewContext
        context.delete(task!)
        appDel.saveContext()
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if task!.important{
            taskLabel.text = "❗️\(task!.name!)"
        }else{
            taskLabel.text = task!.name!
        }
    }

}
