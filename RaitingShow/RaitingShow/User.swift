//
//  User.swift
//  firebaseDemo
//
//  Created by user on 20/12/2021.
//

import Foundation

struct User {
    var id = ""
    var name = ""
    var imageUrl = ""
    var email = ""
    
    init(dict:[String:Any]) {
        if let id = dict["id"] as? String,
           let name = dict["name"] as? String,
           let imageUrl = dict["imageUrl"] as? String,
           let email = dict["email"] as? String {
            self.name = name
            self.id = id
            self.email = email
            self.imageUrl = imageUrl
        }
    }
}
// it's all good for tonight // see you soon
