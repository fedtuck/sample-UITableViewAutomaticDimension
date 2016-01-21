//
//  AutoSizeTableViewCell.swift
//  sample-UITableViewAutomaticDimension
//
//  Created by Federico Tuckey on 1/21/16.
//  Copyright © 2016 Urupe. All rights reserved.
//

import UIKit

class AutoSizeTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
