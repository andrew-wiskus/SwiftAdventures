//
//  ViewController.swift
//  DELEGATED
//
//  Created by Andrew Wiskus on 1/17/17.
//  Copyright © 2017 Andrew Wiskus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        let dataController = DataSourceController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBOutlet weak var dataCount: UILabel!

    @IBAction func addData(_ sender: Any) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        dataController.changeData()

    }


}

