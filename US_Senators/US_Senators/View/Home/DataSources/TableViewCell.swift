//
//  TableViewCell.swift
//  US_Senators
//
//  Created by Mohammed on 14/01/2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var party: UILabel!
    @IBOutlet var desc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentView.layer.cornerRadius = 7
        let margins = UIEdgeInsets(top: 10, left: 5.0, bottom: 10, right: 5.0)
        contentView.frame = contentView.frame.inset(by: margins)
        contentView.layer.borderWidth = 0.1
        contentView.tintColor = .white
        profileImageView.layer.cornerRadius = 20
    }
}
