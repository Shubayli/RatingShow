//
//  DetailsViewController.swift
//  firebaseDemo
//
//  Created by user on 20/12/2021.
//

import UIKit

class DetailsViewController: UIViewController {
    var selectedPost:Post?
    var selectedPostImage:UIImage?
    @IBOutlet weak var postDescriptionLabel: UILabel!
    @IBOutlet weak var postTitleLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var raitingLabel: UILabel!
    
    @IBOutlet weak var titlLable: UILabel!
    
    @IBOutlet weak var descriptionLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titlLable.text = "titleVC".localized
        descriptionLable.text = "desVC".localized
        if let selectedPost = selectedPost,
        let selectedImage = selectedPostImage{
            postTitleLabel.text = selectedPost.title
            postDescriptionLabel.text = selectedPost.description
            raitingLabel.text = selectedPost.raiting
     //      postRating.text = selectedPost.raiting
            postImageView.image = selectedImage
        }
        // Do any additional setup after loading the view.
    }
    

}
