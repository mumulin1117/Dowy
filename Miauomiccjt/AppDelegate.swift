//
//  AppDelegate.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
//    AI
   var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
        window = UIWindow(frame: UIScreen.main.bounds)
    
        let loadArtatud = UserDefaults.standard.bool(forKey: "MJAILoadtatus")//是否已经下载过app
        if loadArtatud == false {
            seting_initloadApp_Wind()
        }
 
        let loginstatud = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ")//是否登陆
        
        AppDelegate.initRootCnotrollerAppWind(ifsignin: loginstatud != nil)
      
      
        window?.makeKeyAndVisible()
        return true
    }

    
    class func initRootCnotrollerAppWind(ifsignin:Bool)  {
        if ifsignin {
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = UserPauioellViewImmitation()
        }else{
            let loginstatud = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? [String:String]
            if loginstatud?["MIAJID"] == "dowy112@gmail.com" {
                MIAJWuoeImmtion.lognCacheing = UIImage(named: "MIAJ_6")!
                MIAJWuoeImmtion.lognFacing = Array(MIAJPerdforemImmtion.momomicMIAJ.prefix(1))
                MIAJWuoeImmtion.lognfolloweing = Array(MIAJPerdforemImmtion.momomicMIAJ.suffix(1))
            }
            let gjiokcv = UINavigationController.init(rootViewController: BucueCarstarTruber.init())
            gjiokcv.navigationBar.isHidden = true
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = gjiokcv
        }
    }
 
    func seting_initloadApp_Wind()  {
        //设置test账号
        let Adbop = ["MIAJID":"dowy112@gmail.com",
                     "MIAJNbbme":"Cuboe",
                    
                     "MIAJBrief":"Film buff, shares insights on acting techniques and tips.",
                     "MIAJCoinB":"30"]
        
        UserDefaults.standard.set(Adbop, forKey: "dowy112@gmail.com")
        //已经下载过
        UserDefaults.standard.set(true, forKey: "MJAILoadtatus")
    }
    

}

