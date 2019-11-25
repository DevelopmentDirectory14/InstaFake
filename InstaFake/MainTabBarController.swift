//
//  MainTabBarController.swift
//  InstaFake
// 
//  Created by Aleksey Shapoval on 11/20/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit
import Firebase

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
     
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
        //home
        let homeNavController = templateNavController()
        
        //search
        let searchController = UIViewController()
        let searchNavController = UINavigationController(rootViewController: searchController)
        searchNavController.tabBarItem.image = UIImage(named: "search_unselected")
            searchNavController.tabBarItem.selectedImage = UIImage(named: "search_selected")
        
        //user profile
        let layout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileController(collectionViewLayout: layout)
        
        let userProfileNavController = UINavigationController(rootViewController: userProfileController)
        
        userProfileNavController.tabBarItem.image = UIImage(named: "profile_unselected")
        userProfileNavController.tabBarItem.selectedImage = UIImage(named: "profile_selected")
        
        tabBar.tintColor = .black
        
        viewControllers = [homeNavController, searchNavController, userProfileNavController]
        
        //viewControllers = [navController, UIViewController()]
    }
    
    fileprivate func templateNavController() -> UINavigationController {
        let viewController = UIViewController()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = UIImage(named: "home_unselected")
        navController.tabBarItem.selectedImage = UIImage(named: "home_selected")
        return navController
    }
    
}
