//
//  UserProfileHeader.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 11/20/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit

class UserProfileHeader: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
