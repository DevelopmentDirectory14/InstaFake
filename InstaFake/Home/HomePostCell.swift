//
//  HomePostCell.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 12/11/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit

class HomePostCell: UICollectionViewCell {
    
    let photoImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .blue
        return iv
    }()
    
        override init(frame: CGRect) {
        super.init(frame: frame)
            
        addSubview(photoImageView)
        photoImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
