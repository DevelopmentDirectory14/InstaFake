//
//  MainTabBarController.swift
//  InstaFake
//
//  Created by Aleksey Shapoval on 11/20/19.
//  Copyright © 2019 VoVa LLC. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let userProfileController = UserProfileController()
        let navController = UINavigationController(rootViewController: userProfileController)
        
        viewControllers = [navController]
    }
}
