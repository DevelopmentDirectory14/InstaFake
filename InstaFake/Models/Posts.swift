//
//  Posts.swift
//  InstaFake
// .
//  Created by Aleksey Shapoval on 12/11/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import Foundation

struct Post {
    
    let user:  User
    let imageURL: String
    let caption: String
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.imageURL = dictionary["imageURL"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
    }
    
}
