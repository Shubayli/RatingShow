//
//  PostCell.swift
//  firebaseDemo
//
//  Created by user on 19/12/2021.
//

import UIKit
import Firebase
class MoveCell: UITableViewCell {
    @IBOutlet weak var postImageView: UIImageView!
   
    @IBOutlet weak var raitingLable: UILabel!
    @IBOutlet weak var descrapion: UILabel!
    @IBOutlet weak var postTitleLabel: UILabel!
//    @IBOutlet weak var userNameLabel: UILabel!
//@IBOutlet weak var userImageView: UIImageView!
    override func awakeFromNib() {
//        super.awakeFromNib()
        // Initialization code
    }

    override  func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(with post:Post) -> UITableViewCell {
        postTitleLabel.text = post.title
        descrapion.text = post.description
        raitingLable.text = post.raiting
        postImageView.loadImageUsingCache(with: post.imageUrl)
//        userNameLabel.text = post.user.name
//        userImageView.loadImageUsingCache(with: post.user.imageUrl)
        return self
    }
    
    override func prepareForReuse() {
//        userImageView.image = nil
        postImageView.image = nil
    }
}
