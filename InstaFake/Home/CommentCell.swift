//
//  CommentCell.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 12/28/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit

class CommentCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
