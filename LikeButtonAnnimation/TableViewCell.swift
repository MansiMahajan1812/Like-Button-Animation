//
//  TableViewCell.swift
//  LikeButtonAnnimation
//
//  Created by Mansi Mahajan on 8/1/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var isLiked:Bool = false

    @IBOutlet weak var likeButton: SparkButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func likeButtonAction(_ sender: SparkButton) {
        isLiked = !isLiked

        if isLiked == true {
            likeButton.setImage(UIImage(named: "liked"), for: UIControlState())
            likeButton.likeBounce(0.6)
            likeButton.animate()
        }
        else{
            likeButton.setImage(UIImage(named: "like"), for: UIControlState())
            likeButton.unLikeBounce(0.4)
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
