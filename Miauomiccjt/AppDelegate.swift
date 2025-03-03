//
//  AppDelegate.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/2/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
//www.wertyu6543z.xyz    AI
   var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       window = UIWindow(frame: UIScreen.main.bounds)
        initRootCnotrollerAppWind(ifsignin:true)
      
       window?.makeKeyAndVisible()
       return true
    }

    
    func initRootCnotrollerAppWind(ifsignin:Bool)  {
        if ifsignin {
            window?.rootViewController = UserPauioellViewImmitation()
        }else{
            let gjiokcv = UINavigationController.init(rootViewController: BucueCarstarTruber.init())
            gjiokcv.navigationBar.isHidden = true
            window?.rootViewController = gjiokcv
        }
    }
 

}

