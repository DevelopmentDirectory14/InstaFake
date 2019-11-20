//
//  UserProfileController.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 11/20/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit
import Firebase

class UserProfileController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        
        navigationItem.title = Auth.auth().currentUser?.uid
        
        fetchUser()
        
    }
    
    fileprivate func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            print(snapshot.value ?? "")
            
            let dictionary = snapshot.value as? [String : Any]
            
            let username = dictionary?["username"] as? String
            self.navigationItem.title = username
            
        }) { (err) in
            print("Failed to fetch user:", err)
        }
        
    }
    
}
