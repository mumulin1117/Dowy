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
   let pubVideoMIAJBuon = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()

       congigMIAJViewControllers()
       configMIAJPublishButton()
       configurationTabBarUIMIAJAppearance()
    }
    

   private func congigMIAJViewControllers() {
          
      let homeVC = MIAJPerdforemImmtion()
      homeVC.tabBarItem = UITabBarItem.init(title: nil, image:UIImage(named: "tab_uo_diyi")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "tab_uo_diyi_sel")!.withRenderingMode(.alwaysOriginal))

         
      let emptyVC = MIAJTopImmtinu() // 占位
      emptyVC.tabBarItem = UITabBarItem.init(title: "", image: nil, tag: 1)
      emptyVC.tabBarItem.isEnabled = false

      let profileVC = MIAJWuoeImmtion()
      
      profileVC.tabBarItem = UITabBarItem.init(title: nil, image: UIImage(named: "tab_uo_wo")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "tab_uo_wo_sel")!.withRenderingMode(.alwaysOriginal))

       viewControllers = [MIAJNaibhuContio.init(rootViewController: homeVC),
                          MIAJNaibhuContio.init(rootViewController: emptyVC),
                          MIAJNaibhuContio.init(rootViewController: profileVC)]
     
   }
   
   
   private func configMIAJPublishButton() {
          
      let buttonSize: CGFloat = 60
      pubVideoMIAJBuon.frame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
      
      pubVideoMIAJBuon.layer.cornerRadius = buttonSize / 2
    
      pubVideoMIAJBuon.setBackgroundImage(UIImage.init(named: "takBartutu"), for: .normal)
    
      pubVideoMIAJBuon.addTarget(self, action: #selector(publiVideoToMIAJnTapped), for: .touchUpInside)
      
      tabBar.addSubview(pubVideoMIAJBuon)
      pubVideoMIAJBuon.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
          pubVideoMIAJBuon.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor),
          pubVideoMIAJBuon.centerYAnchor.constraint(equalTo: tabBar.topAnchor, constant: 10),
          pubVideoMIAJBuon.widthAnchor.constraint(equalToConstant: buttonSize),
          pubVideoMIAJBuon.heightAnchor.constraint(equalToConstant: buttonSize)
      ])
      
   }
   @objc private func publiVideoToMIAJnTapped() {
          
      let publishVC = MIAJPubyaImmtion()
      present(publishVC, animated: true, completion: nil)
      
   }
   
   private func configurationTabBarUIMIAJAppearance() {
     
      tabBar.backgroundColor = UIColor(red: 0.09, green: 0.05, blue: 0.11, alpha: 1)
     
     
   }

}
extension UserPauioellViewImmitation: TransitionableTab {

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
       
       if viewController != viewControllers?[1] {
          return  animateTransition(tabBarController, shouldSelect: viewController)
       }
       
       return true
        
    }
}

class MIAJNaibhuContio: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title
        
        if children.count > 0   {
            if !viewController.isMember(of:MIAJTopImmtinu.self) {
                viewController.hidesBottomBarWhenPushed = true
            }
           
        }
      
        super.pushViewController(viewController, animated: false)
    }
}


class MIAJTopImmtinu: UIViewController {
    
}
