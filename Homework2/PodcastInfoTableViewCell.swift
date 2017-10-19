//
//  PodcastInfoTableViewCell.swift
//  Homework3
//
//  Created by Ayyanchira, Akshay Murari on 10/19/17.
//  Copyright © 2017 Shehab, Mohamed. All rights reserved.
//

import UIKit

class PodcastInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var podcastTitle: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func actionButtonTapped(_ sender: UIButton) {
        print("+ pressed\n")
    }
}
