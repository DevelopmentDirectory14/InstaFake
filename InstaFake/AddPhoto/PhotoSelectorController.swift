//
//  PhotoSelectorController.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 11/25/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit

class PhotoSelectorController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .yellow
        
        setupNavigationButtons()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    fileprivate func setupNavigationButtons() {
        navigationController?.navigationBar.tintColor = .black
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancel))
    }
    
    @objc func handleCancel() {
        dismiss(animated: true, completion: nil)
    }
    
}
