//
//  PostTableViewCell.swift
//  Instagram_UI
//
//  Created by SQ on 11/21/19.
//  Copyright © 2019 SQ. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var likeNavBar: UINavigationBar!
    
    @IBOutlet weak var profileLogoImageView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var labelLikeAmount: UILabel!
    @IBOutlet weak var labelUserCaption: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        navBar.shadowImage = UIImage()
        likeNavBar.shadowImage = UIImage()
        profileLogoImageView.layer.cornerRadius = profileLogoImageView.frame.size.height/2
        postImageView.contentMode = .scaleAspectFill
        profileLogoImageView.contentMode = .scaleAspectFill
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
