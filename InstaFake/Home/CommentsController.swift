//
//  CommentsController.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 12/18/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit

class CommentsController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .red
        
        tabBarController?.tabBar.isHidden = true 
    }
}
