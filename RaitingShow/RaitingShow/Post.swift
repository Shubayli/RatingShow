//
//  Post.swift
//  firebaseDemo
//
//  Created by user on 20/12/2021.
//

import Foundation
import Firebase
struct Post {
    var id = ""
    var title = ""
    var description = ""
    var imageUrl = ""
    var raiting = ""
    var user:User
    var createdAt: Timestamp?
    
    init(dict:[String:Any],id:String,user:User) {
        if let title = dict["title"] as? String,
           let raiting = dict["raiting"] as? String,
           let description = dict["description"] as? String,
           let imageUrl = dict["imageUrl"] as? String,
            let createdAt = dict["createdAt"] as? Timestamp{
            self.title = title
            self.description = description
            self.imageUrl = imageUrl
            self.createdAt = createdAt
            self.raiting = raiting
        }
        self.id = id
        self.user = user
    }
}
