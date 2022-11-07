//
//  CustomTableViewCell.swift
//  TableViewProject
//
//  Created by Nikita Shirobokov on 07.11.22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var pictureImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        pictureImageView.contentMode = .scaleAspectFit
    }
}
