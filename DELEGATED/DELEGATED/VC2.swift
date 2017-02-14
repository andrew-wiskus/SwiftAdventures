//
//  VC2.swift
//  DELEGATED
//
//  Created by Andrew Wiskus on 1/17/17.
//  Copyright © 2017 Andrew Wiskus. All rights reserved.
//

import UIKit

class VC2: UIViewController {

    let data = DataSourceController()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(data.getAllArtistNames())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
