//
//  NewCell.swift
//  HackerNewsInTraining
//
//  Created by GGS-BKS on 11/01/23.
//

import UIKit

class NewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    var newsModel:Hits?
    override func awakeFromNib() {
        super.awakeFromNib()
        label.text = newsModel?.title
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
