//
//  UserProfileHeader.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 11/20/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit
import Firebase

class UserProfileHeader: UICollectionViewCell {
    
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        
        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor, left: self.leftAnchor, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        profileImageView.layer.cornerRadius = 80 / 2
        profileImageView.clipsToBounds = true
        
        setupProfileImage()
    }
    
    var user: User? {
        didSet {
            
        }
    }
    
    fileprivate func setupProfileImage() {
        
        //copied Firebase fetch code
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            print(snapshot.value ?? "")
            
            guard let dictionary = snapshot.value as? [String : Any] else { return }
            
            guard let profileImageUrl = dictionary["profileImageUrl"] as? String else { return }
            
            
            
        }) { (err) in
            print("Failed to fetch user:", err)
        }
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
