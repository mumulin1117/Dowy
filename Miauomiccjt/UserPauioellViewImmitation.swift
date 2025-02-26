//
//  UserPauioellViewImmitation.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/2/26.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import TransitionableTab

class UserPauioellViewImmitation: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

   

}
extension UserPauioellViewImmitation: TransitionableTab {

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return animateTransition(tabBarController, shouldSelect: viewController)
    }
}
