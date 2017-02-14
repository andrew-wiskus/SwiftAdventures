//
//  MyFirstTableViewCell.swift
//  tableViewExample
//
//  Created by Andrew Wiskus on 1/10/17.
//  Copyright © 2017 Andrew Wiskus. All rights reserved.
//

import UIKit

class MyFirstTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var mainLabel: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
