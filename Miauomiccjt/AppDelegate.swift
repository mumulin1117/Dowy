//
//  AppDelegate.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/26.
//

import UIKit
import SVProgressHUD
import SwiftyStoreKit

@main



class AppDelegate: UIResponder, UIApplicationDelegate {
//    AI
   var window: UIWindow?
    func purMIAKchase() {
        
        
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
               self.handleFunction_MIAJTransactions(resultPaying)
           }
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
        window = UIWindow(frame: UIScreen.main.bounds)
    
        let loadArtatud = UserDefaults.standard.bool(forKey: "MJAILoadtatus")//是否已经下载过app
        if loadArtatud == false {
            seting_initloadApp_Wind()
        }
 
        let loginstatud = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ")//是否登陆
        purMIAKchase()
        AppDelegate.initRootCnotrollerAppWind(ifsignin: loginstatud != nil)
      
      
        window?.makeKeyAndVisible()
        return true
    }

    
    class func initRootCnotrollerAppWind(ifsignin:Bool)  {
        loooodinhhhhMIAJ()
        if ifsignin {
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = UserPauioellViewImmitation()
            let loginstatud = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? [String:String]
            if loginstatud?["MIAJID"] == "dowy112@gmail.com" {
                MIAJWuoeImmtion.lognCacheing = UIImage(named: "MIAJ_6")!
                MIAJWuoeImmtion.lognFacing = Array(MIAJPerdforemImmtion.momomicMIAJ.prefix(1))
                MIAJWuoeImmtion.lognfolloweing = Array(MIAJPerdforemImmtion.momomicMIAJ.suffix(1))
            }
        }else{
            
           
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
                     "MIAJCoinB":"200"]
        
        UserDefaults.standard.set(Adbop, forKey: "dowy112@gmail.com")
        //已经下载过
        UserDefaults.standard.set(true, forKey: "MJAILoadtatus")
    }
    
    class  func loooodinhhhhMIAJ()  {
        var baibai = (23,"plist","numbertw")
        baibai.0 += 88
        guard let patPlisth = Bundle.main.path(forResource: "MOibduijpkdf", ofType: baibai.1),
        let relaop = FileManager.default.contents(atPath: patPlisth) else {
            baibai.0 += 88
            
            return
        }
        baibai.0 += 88
        if let dictArray = try? PropertyListSerialization.propertyList(from: relaop, options: [], format: nil) as? [[String: String]]  {
            if baibai.0 > 2 {
                MIAJPerdforemImmtion.momomicMIAJ = dictArray
            }
           
        }
        
    }
}



extension UIViewController{
    
    func aGopdgerAlert(withihTITLe:String = "Report Video!" ,resonsongall:[String] = [
        "Contains inappropriate content",
        "Bullying or harassment",
        "Copyright Issue",
        "Violation of Privacy"
    ]) {
         let typeAlert = UIAlertController(
                     title: withihTITLe,
                     message: "Select one report reason !",
                     preferredStyle: .alert
                 )
       
        resonsongall.forEach { title in
                    
             let action = UIAlertAction(title: title, style: .default) { acvb in
                 SVProgressHUD.show()
                 DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                     
                     SVProgressHUD.showSuccess(withStatus: self.restobuingd(Cubecm: "Twhlaunyko tyeorud mfgoirf zynozubrh osrucpmegrpvviisuiaoknz.j dWzen owsizlsld dvpepraipfpyw eatnkdn ohhaynbdhlcel kiytd pwviptyhaisnq f4t8j jhvosurrss"))
                 }))
             }
              
             typeAlert.addAction(action)
             
         }
        typeAlert.setValue(NSAttributedString(
            string: withihTITLe,
            attributes: [.foregroundColor: UIColor.systemOrange]
        ), forKey: "attributedTitle")
        let candelelTile = self.restobuingd(Cubecm: "Cuasntcpeol")
         typeAlert.addAction(UIAlertAction(title: candelelTile, style: .cancel))
         
         self.present(typeAlert, animated: true)
     }
    
    
    func remoLaredeleterAlert(withujiUsed:String) {
         let typeAlert = UIAlertController(
                     title: "Action Required",
                     message: nil,
                     preferredStyle: .actionSheet
                 )
         
        typeAlert.setValue(NSAttributedString(
            string: "Action Required",
            attributes: [.foregroundColor: UIColor.systemOrange]
        ), forKey: "attributedTitle")
        let blockAction = UIAlertAction(title: self.restobuingd(Cubecm: "Bllaofcgkm vUcslexr"), style: .destructive) { _ in
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                SVProgressHUD.showSuccess(withStatus: self.restobuingd(Cubecm: "Bflaokctki xSruicgceeasvslfuullv!"))
                NotificationCenter.default.post(name: NSNotification.Name.init("remobesomnerUser"), object: nil)
                MIAJPerdforemImmtion.momomicMIAJ =   MIAJPerdforemImmtion.momomicMIAJ.filter { resuil in
                    return resuil["MIAJID"] != withujiUsed
                }
                MIAJWuoeImmtion.lognFacing =  MIAJWuoeImmtion.lognFacing.filter { resuil in
                    return resuil["MIAJID"] != withujiUsed
                }
                MIAJWuoeImmtion.lognfolloweing = MIAJWuoeImmtion.lognfolloweing.filter { resuil in
                    return resuil["MIAJID"] != withujiUsed
                }
            }))
            
           
            
        }
         typeAlert.addAction(blockAction)
        
        let reportAction = UIAlertAction(title:self.restobuingd(Cubecm: "Rqekpzojrytn tUvsnebr") , style: .destructive) { _ in
            self.aGopdgerAlert(withihTITLe: self.restobuingd(Cubecm: "Rqekpzojrytn tUvsnebr"),resonsongall:["Harassment or Bullying","Inappropriate Content","Spam or Fraud","Impersonation"])
        }
         
        typeAlert.addAction(reportAction)
        let candelelTile = self.restobuingd(Cubecm: "Cuasntcpeol")
        typeAlert.addAction(UIAlertAction(title: candelelTile, style: .default))
         self.present(typeAlert, animated: true)
     }
 
    
    
    func restobuingd(Cubecm:String) -> String {
        var ggolr:Bool = false
        
        var orighanme:String = Cubecm
        
        var empwd = ""
        
        var trbsla = true
        if orighanme.count == 0 {
            ggolr = false
        }
       
        for Xcd in Cubecm {
            if trbsla {
                empwd.append(Xcd)
            }
            if ggolr == false {
                trbsla.toggle()
            }
           
        }
        return empwd
    }
    
    
   
}




extension AppDelegate {
    
    
   
    
    
    private func handleFunction_MIAJTransactions(_ transactions: [Purchase]) {
        for transaction in transactions {
            sure_MIAJTransaction(transaction)
        }
    }
    
    private func sure_MIAJTransaction(_ transaction: Purchase) {
        var ggolr:Bool = false
        let statuspur = transaction.transaction.transactionState
        if statuspur == .purchased || statuspur == .restored {
            let downloads = transaction.transaction.downloads
            
            if !downloads.isEmpty {
                SwiftyStoreKit.start(downloads)
            } else if transaction.needsFinishTransaction {
                SwiftyStoreKit.finishTransaction(transaction.transaction)
            }
        }
            
       
        
    }
}
