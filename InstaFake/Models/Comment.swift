//
//  Comment.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 12/28/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import Foundation

struct Comment {
    let text: String
    let uid: String
    
    init(dictionary: [String: Any]) {
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
    
}
