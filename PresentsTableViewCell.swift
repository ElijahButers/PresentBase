//
//  PresentsTableViewCell.swift
//  PresentBaseSwift3.0
//
//  Created by User on 1/19/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class PresentsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
