//
//  GoonieTableViewCell.swift
//  GitHubGoonies
//
//  Created by Kelly Robinson on 9/28/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit

class GoonieTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var avatarImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
