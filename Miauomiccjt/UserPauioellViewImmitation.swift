//
//  UserPauioellViewImmitation.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/26.
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
          
      let numberoneVC = MIAJPerdforemImmtion()
      numberoneVC.tabBarItem = UITabBarItem.init(title: nil, image:UIImage(named: "tab_uo_diyi")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "tab_uo_diyi_sel")!.withRenderingMode(.alwaysOriginal))

         
      let emp_derVC = MIAJTopImmtinu() // 占位
      emp_derVC.tabBarItem = UITabBarItem.init(title: "", image: nil, tag: 1)
      emp_derVC.tabBarItem.isEnabled = false

      let minefolerC = MIAJWuoeImmtion()
      
      minefolerC.tabBarItem = UITabBarItem.init(title: nil, image: UIImage(named: "tab_uo_wo")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "tab_uo_wo_sel")!.withRenderingMode(.alwaysOriginal))

       viewControllers = [MIAJNaibhuContio.init(rootViewController: numberoneVC),
                          MIAJNaibhuContio.init(rootViewController: emp_derVC),
                          MIAJNaibhuContio.init(rootViewController: minefolerC)]
     
   }
   
   
   private func configMIAJPublishButton() {
    
      pubVideoMIAJBuon.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
      
      pubVideoMIAJBuon.layer.cornerRadius = 30
    
      pubVideoMIAJBuon.setBackgroundImage(UIImage.init(named: "takBartutu"), for: .normal)
    
      pubVideoMIAJBuon.addTarget(self, action: #selector(publiVideoToMIAJnTapped), for: .touchUpInside)
      
      tabBar.addSubview(pubVideoMIAJBuon)
      pubVideoMIAJBuon.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
          pubVideoMIAJBuon.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor),
          pubVideoMIAJBuon.centerYAnchor.constraint(equalTo: tabBar.topAnchor, constant: 10),
          pubVideoMIAJBuon.widthAnchor.constraint(equalToConstant: 60),
          pubVideoMIAJBuon.heightAnchor.constraint(equalToConstant: 60)
      ])
      
   }
   @objc private func publiVideoToMIAJnTapped() {
       let Abnavir = UINavigationController.init(rootViewController: MIAJPubyaImmtion())
       
       Abnavir.navigationBar.isHidden = true
       Abnavir.modalPresentationStyle = .overFullScreen
       present(Abnavir, animated: true, completion: nil)
      
   }
   
   private func configurationTabBarUIMIAJAppearance() {
       let MIAJApp = UITabBarAppearance()
               
       MIAJApp.configureWithOpaqueBackground()
       MIAJApp.backgroundColor = UIColor(red: 0.09, green: 0.05, blue: 0.11, alpha: 1)
       MIAJApp.shadowColor = .purple
      
       tabBar.standardAppearance = MIAJApp
       tabBar.scrollEdgeAppearance = MIAJApp
     
       tabBar.isTranslucent = false

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




