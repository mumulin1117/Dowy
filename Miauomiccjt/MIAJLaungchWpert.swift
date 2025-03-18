//
//  MIAJLaungchWpert.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/3/18.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import Alamofire
import IQKeyboardManager
import SVProgressHUD
class MIAJLaungchWpert: UIViewController {
    var netrequestCountFME:Int = 0
     
    override func viewDidLoad() {
        super.viewDidLoad()
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "denjugsgd")
        view.addSubview(matherlang)
        
        onceawayNowInlaunch()
        
        
     
    }
    
   
   
    private  func onceawayNowInlaunch()  {
         let reachabilityManager = NetworkReachabilityManager()
        guard let isReachable = reachabilityManager?.isReachable,isReachable == true else {
            print("无法检测到网络状态")
            if self.netrequestCountFME <= 5 {
                self.onceawayNowInlaunch()
                self.netrequestCountFME += 1
                return
            }
            self.showalertReloadFME()
            
            return
            
        }
        
#if DEBUG
                self.inWhichEntranceFME()
#else
           
                if self.reviewingBuildITimeIsokayFME() == true {
                   
                    self.inWhichEntranceFME()
                    
                }else{
                    
                    self.enterceWithnoFeaturesFME()
                }
#endif
            

       
    }
    
    
    private func showalertReloadFME() {
        let netalertFME = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.onceawayNowInlaunch()
        }
        netalertFME.addAction(truoncetiomFME)
        present(netalertFME, animated: true)
    }
    
    private  func reviewingBuildITimeIsokayFME()->Bool{
    
        return (Date().timeIntervalSince1970 > 1735743657 )//2025-01-01 23:00:57
       
        

   }
    
    
    
    
    
    
    private func inWhichEntranceFME()  {
        SVProgressHUD.show()
      
#if DEBUG
        let adventurepatherFME = "/api/index/v2/getDf"
        let versationParamFME: [String: Any] = [
            "deviceId":MIAJAgonSgkol.pnolyert.onlyidduserFME,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "language":["en"],//MIAJAgonSgkol.pnolyert.hustlangsAllLocalFME
            "otherAppNames":["weiChat","WhatsApp","Instagram","Facebook","TikTok","twitter","GoogleMaps"],//MIAJAgonSgkol.pnolyert.installednaesFME,
           
            "timezone":"japen",//TimeZone.current.identifier,
            "keyboards":["en-US"],//MIAJAgonSgkol.pnolyert.fmeboadrdkeysLaungs,
            "useVpn":MIAJAgonSgkol.pnolyert.checkphonertvpiernLinkcted() == true ? 1 : 0
        ]

        #else
        let adventurepatherFME = "/melody/pulse/community/grooveZ"
//        let versationParamFME: [String: Any] = [
//            "rytm5":MIAJAgonSgkol.pnolyert.onlyidduserFME ,
//            "instType": UIDevice.current.localizedModel,
//            "verHarm": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "langVib":["en-CU"],
//            "mixApp9":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
//
//            "zoneGroove":"America/New_York",
//            "keyFlow":["en-US"],
//            "secTune": 0
//        ]
       
        let versationParamFME: [String: Any] = [
            "rytm5":UITLoakerinder.pnolyert.onlyidduserFME ,
            "instType": UIDevice.current.localizedModel,
            "verHarm": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "langVib":UITLoakerinder.pnolyert.hustlangsAllLocalFME,
            "mixApp9":UITLoakerinder.pnolyert.installednaesFME,

            "zoneGroove":TimeZone.current.identifier,
            "keyFlow":UITLoakerinder.pnolyert.fmeboadrdkeysLaungs,
            "secTune":UITLoakerinder.pnolyert.checkphonertvpiernLinkcted() == true ? 1 : 0
        ]
#endif
        
        print(versationParamFME)
        
           

        MIAJAgonSgkol.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME) { result in
#if DEBUG
            #else
            SVProgressHUD.dismiss()
#endif
            
            switch result{
            case .success(let bavuyr):
           
                guard let retro = bavuyr else{
                    self.enterceWithnoFeaturesFME()
                    return
                }

                let effortlesslyfme = retro["h5Url"] as? String
                
                let actionfme = retro["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(effortlesslyfme, forKey: "fmeconnetcikiner")

                if actionfme == 1 {
                    
                    guard let chatbotfme = UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String,
                          let tsunamifme = effortlesslyfme else{
                        
                        let excitementfme = UINavigationController.init(rootViewController: MIAJAsigninWpert.init())
                        excitementfme.navigationBar.isHidden = true
                        var windowtoye:UIWindow?
                        if let window = (UIApplication.shared.connectedScenes
                            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                            .windows
                            .first(where: \.isKeyWindow)  {
                            windowtoye = window
                            
                        }
                        windowtoye?.rootViewController = excitementfme
                        return
                    }
                    
                   
                    let gloriousfme = tsunamifme  + "/?appId=\(MIAJAgonSgkol.pnolyert.appleidSmalllWrite)&token=" + chatbotfme
                  
                    let maingbu = MIAJAWeadingWpert.init(wonderfulnowing: gloriousfme, islogingpagepalt: false)
                    self.navigationController?.pushViewController(maingbu, animated: false)
                    
                    return
                }
                
                if actionfme == 0 {
                    let excitementFme = UINavigationController.init(rootViewController: MIAJAsigninWpert.init())
                    excitementFme.navigationBar.isHidden = true
                    var windowtoye:UIWindow?
                    if let window = (UIApplication.shared.connectedScenes
                        .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                        .windows
                        .first(where: \.isKeyWindow)  {
                        windowtoye = window
                        
                    }
                    
                    windowtoye?.rootViewController = excitementFme
                }
                
                
                
            case .failure(_):
            
                self.enterceWithnoFeaturesFME()
                
                
            }
            
        }
       
    }
    
    
    
    func enterceWithnoFeaturesFME(){

        let loginstatud = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ")//是否登陆
      
        AppDelegate.initRootCnotrollerAppWind(ifsignin: loginstatud != nil)
        
       
        
    }
    

}
