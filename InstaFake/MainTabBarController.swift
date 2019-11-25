//
//  MainTabBarController.swift
//  InstaFake
// 
//  Created by Aleksey Shapoval on 11/20/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit
import Firebase

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        let index = tabBarController.viewControllers?.firstIndex(of: viewController)
        //let index = viewControllers?.firstIndex(of: viewController )
        
        if index == 2 {
            let layout = UICollectionViewFlowLayout()
            let photoSelectorController = PhotoSelectorController(collectionViewLayout: layout)
            let navController = UINavigationController(rootViewController: photoSelectorController)
            navController.modalPresentationCapturesStatusBarAppearance = true
            
            
            present(navController, animated: true, completion: nil)
            return false
        }
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                let loginController =  LoginController()
                let navController = UINavigationController(rootViewController: loginController)
                self.present(navController, animated: true, completion: nil)
            }
            
            return
        }
        
        setupViewControllers()
        
    }
    
    func setupViewControllers() {
        let homeNavController = templateNavController(unselectedImage: "home_unselected", selectedImage: "home_selected", rootViewController: UserProfileController(collectionViewLayout: UICollectionViewFlowLayout()))
        
        let searchNavController = templateNavController(unselectedImage: "search_unselected", selectedImage: "search_selected")
        
        let plusNavController = templateNavController(unselectedImage: "plus_unselected", selectedImage: "plus_unselected")
        
        let likeNavController = templateNavController(unselectedImage: "like_unselected", selectedImage: "like_selected")
        
        //user profile
        let layout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileController(collectionViewLayout: layout)
        
        let userProfileNavController = UINavigationController(rootViewController: userProfileController)
        
        userProfileNavController.tabBarItem.image = UIImage(named: "profile_unselected")
        userProfileNavController.tabBarItem.selectedImage = UIImage(named: "profile_selected")
        
        tabBar.tintColor = .black
        
        viewControllers = [homeNavController, searchNavController, plusNavController, likeNavController, userProfileNavController]
        
        //modify tab bar item insets
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 4, left: 0, bottom: -4, right: 0)
        }
        
    }
    
    fileprivate func templateNavController(unselectedImage: String, selectedImage: String, rootViewController: UIViewController = UIViewController()) -> UINavigationController {
        let viewController = rootViewController
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = UIImage(named: "\(unselectedImage)")
        navController.tabBarItem.selectedImage = UIImage(named: "\(selectedImage)")
        return navController
    }
    
}
