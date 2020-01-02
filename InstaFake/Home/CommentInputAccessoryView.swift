//
//  CommentInputAccessoryView.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 1/2/20.
//  Copyright © 2020 VoVa LLC. All rights reserved.
//

import UIKit

class CommentInputAccessoryView: UIView {
    
    let submitButton: UIButton = {
        let sb = UIButton(type: .system)
        sb.setTitle("Submit", for: .normal)
        sb.setTitleColor(.black, for: .normal)
        sb.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        sb.addTarget(self, action: #selector(handleSubmit), for: .touchUpInside)
        return sb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        
        
        addSubview(submitButton)
        submitButton.anchor(top: topAnchor, left: nil, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 12, width: 50, height: 0)
    }
    
    @objc func handleSubmit() {
        print("123")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
