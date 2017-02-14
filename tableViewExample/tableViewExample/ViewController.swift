//
//  ViewController.swift
//  tableViewExample
//
//  Created by Andrew Wiskus on 1/10/17.
//  Copyright © 2017 Andrew Wiskus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let dataFromDB = ["first", "second", "third"]
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyFirstTableViewCell
        if let cellData = Bundle.main.loadNibNamed("MyFirstTableViewCell", owner: self, options: nil)?.first as? MyFirstTableViewCell {
            print("cell is good?")
            cell = cellData
            cell.mainLabel.text = "\(dataFromDB[indexPath.row])"
        } else {
            print("WTF?")
            cell = MyFirstTableViewCell()
        }

        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataFromDB.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

