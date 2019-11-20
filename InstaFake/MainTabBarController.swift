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
        
        let redVC = UIViewController()
        redVC.view.backgroundColor = .red
        
        let navController = UINavigationController(rootViewController: redVC)
        
        viewControllers = [navController]
    }
}
