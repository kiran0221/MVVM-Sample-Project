//
//  cellTableViewCell.swift
//  SampleProject
//
//  Created by SAIKIRAN on 3/26/18.
//  Copyright © 2018 SAIKIRAN. All rights reserved.
//

import UIKit

class cellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
