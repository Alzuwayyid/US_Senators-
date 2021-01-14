//
//  TableViewCell.swift
//  US_Senators
//
//  Created by Mohammed on 14/01/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var profileImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        self.contentView.layer.cornerRadius = 7
        let margins = UIEdgeInsets(top: 0, left: 0.0, bottom: 0, right: 0.0)
        contentView.frame = contentView.frame.inset(by: margins)
        contentView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        contentView.layer.shadowOpacity = 0.4
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowRadius = 5
        contentView.layer.masksToBounds = true
        contentView.layer.borderWidth = 0.3
        contentView.tintColor = .white
    }

}
