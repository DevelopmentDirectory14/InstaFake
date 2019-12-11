//
//  Posts.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 12/11/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import Foundation

struct Post {
    let imageURL: String
    
    init(dictionary: [String: Any]) {
        self.imageURL = dictionary["imageURL"] as? String ?? ""
    }
    
}
