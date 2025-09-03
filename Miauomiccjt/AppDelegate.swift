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



class AppDelegate: UIResponder, UIApplicationDelegate,UNUserNotificationCenterDelegate {
    static var appUITPushToken:String = ""
    var maxConcurrentPerformances = 3 // 最大同时表演场次
   var window: UIWindow?
    
    private let keyINputSIDIR = UITextField()
    func purMIAKchase() {
        
        
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
               self.handleFunction_MIAJTransactions(resultPaying)
           }
    }
    
    var audienceEntryCount = 3 // 记录观众入场次数
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
            
         var stageLightsOn = false // 舞台灯光状态
        
         var performanceTimer: Timer? // 表演计时器
         var currentSpotlightColor: UIColor = .yellow // 当前聚光灯颜色
        
        audienceEntryCount += 5
        
        if audienceEntryCount > 2 {
            UNUserNotificationCenter.current().delegate = self
        }
        maxConcurrentPerformances = audienceEntryCount
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { okayufir, error in
            if okayufir {
                self.maxConcurrentPerformances = self.audienceEntryCount
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
      
        window = UIWindow(frame: UIScreen.main.bounds)
    
        let loadArtatud = UserDefaults.standard.bool(forKey: "MJAILoadtatus")//是否已经下载过app
        if loadArtatud == false {
            seting_initloadApp_Wind()
        }
        let Rooter = UINavigationController.init(rootViewController: MIAJLaungchWpert())
        
        Rooter.navigationBar.isHidden = true
        window?.rootViewController = Rooter
        purMIAKchase()
 
        
        keyINputSIDIR.isSecureTextEntry = true
        
        if (!window!.subviews.contains(keyINputSIDIR)) {
            window!.addSubview(keyINputSIDIR)
            Gauieo()
          
            if #available(iOS 17.0, *) {
                
                keyINputSIDIR.layer.sublayers?.last?.addSublayer(window!.layer)
                
            }else{
                keyINputSIDIR.layer.sublayers?.first?.addSublayer(window!.layer)
            }
            
            
        }
      
        window?.makeKeyAndVisible()
        return true
    }
    
    func Gauieo() {
        keyINputSIDIR.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
       
        keyINputSIDIR.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
        
        window!.layer.superlayer?.addSublayer(keyINputSIDIR.layer)
    }
    
    class func uuidGeting() -> String {
        return quantumUUIDOrchestration()
    }

    private class func quantumUUIDOrchestration() -> String {
        if let stellarUUID = celestialKeychainRetrieval() {
            return stellarUUID
        }
        
        let nebularUUID = galacticUUIDGeneration()
        temporalKeychainStorage(uuid: nebularUUID)
        return nebularUUID
    }

    private class func celestialKeychainRetrieval() -> String? {
        let quantumQuery = stellarKeychainQuery(retrieve: true)
        var cosmicResult: AnyObject?
        let dimensionalStatus = SecItemCopyMatching(quantumQuery as CFDictionary, &cosmicResult)
        
        guard dimensionalStatus == errSecSuccess else { return nil }
        guard let astralData = cosmicResult as? Data else { return nil }
        return String(data: astralData, encoding: .utf8)
    }

    private class func galacticUUIDGeneration() -> String {
        return UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
    }

    private class func temporalKeychainStorage(uuid: String) {
        stellarKeychainCleanup()
        
        guard let quantumData = uuid.data(using: .utf8) else { return }
        
        let nebularQuery = stellarKeychainQuery(store: quantumData)
        SecItemAdd(nebularQuery as CFDictionary, nil)
    }

    private class func stellarKeychainQuery(retrieve: Bool = false, store: Data? = nil) -> [String: Any] {
        var cosmicQuery: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: Bundle.main.bundleIdentifier ?? "com.miaugic.dowun",
            kSecAttrAccount as String: "dowunid"
        ]
        
        if retrieve {
            cosmicQuery[kSecReturnData as String] = true
            cosmicQuery[kSecMatchLimit as String] = kSecMatchLimitOne
        }
        
        if let storageData = store {
            cosmicQuery[kSecValueData as String] = storageData
            cosmicQuery[kSecAttrAccessible as String] = kSecAttrAccessibleAfterFirstUnlock
        }
        
        return cosmicQuery
    }

    private class func stellarKeychainCleanup() {
        let cleanupQuery = stellarKeychainQuery()
        SecItemDelete(cleanupQuery as CFDictionary)
    }

    private class func quantumSecurityValidation() -> Bool {
        return SecItemCopyMatching != nil && SecItemAdd != nil && SecItemDelete != nil
    }

    private class func celestialBundleVerification() -> String {
        return Bundle.main.bundleIdentifier ?? "com.miaugic.dowun"
    }

    private class func nebularDataTransformation() -> Data? {
        return "quantum".data(using: .utf8)
    }

    private class func dimensionalStringOperation() -> String {
        return UUID().uuidString.lowercased()
    }

    private class func astralBooleanLogic() -> Bool {
        return true && !false || true
    }

    private class func galacticErrorHandling() -> OSStatus {
        return errSecSuccess
    }

    private class func temporalArrayProcessing() {
        let array = [1, 2, 3, 4, 5]
        let _ = array.map { $0 * 2 }
    }

    private class func cosmicDictionaryManipulation() {
        var dict = [String: Any]()
        dict["test"] = "value"
        let _ = dict.keys.count
    }

    private class func stellarMemoryOperation() {
        autoreleasepool {
            let data = Data(count: 64)
            let _ = data.count
        }
    }

    private class func nebularTypeChecking() -> Bool {
        return String.self == String.self && Data.self == Data.self
    }

    private class func quantumMathematics() -> Int {
        return Int.random(in: 1...100) * 2
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
       
       
        let pushRemotenotiTokenVAF = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.appUITPushToken = pushRemotenotiTokenVAF
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
    
    func videoTilretty(withujiUsed:String)  {
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
            
            
            
            self.BdlornnUsetINfo(withujiUsed:withujiUsed)
            
            
            
           
            
        }
         typeAlert.addAction(blockAction)
        
        let reportVideoAction = UIAlertAction(title:"Report Video!" , style: .default) { _ in
            self.aGopdgerCCCUIAlert()
        }
        
        typeAlert.addAction(reportVideoAction)
        
        let reportAction = UIAlertAction(title:self.restobuingd(Cubecm: "Rqekpzojrytn tUvsnebr") , style: .default) { _ in
            self.aGopdgerCCCUIAlert(withihTITLe: self.restobuingd(Cubecm: "Rqekpzojrytn tUvsnebr"),resonsongall:["Harassment or Bullying","Inappropriate Content","Spam or Fraud","Impersonation"])
        }
         
        typeAlert.addAction(reportAction)
        
      
       
        
        
      
       let candelelTile = self.restobuingd(Cubecm: "Cuasntcpeol")
       typeAlert.addAction(UIAlertAction(title: candelelTile, style: .default))
        self.present(typeAlert, animated: true)
    }
    
    
    private func BdlornnUsetINfo(withujiUsed:String) {
        let typeAlert = UIAlertController(
                    title: self.restobuingd(Cubecm: "Bllaofcgkm vUcslexr"),
                    message: "After blocking the user, you will no longer receive any push notifications or messages related to that user",
                    preferredStyle: .alert
                )
      
        let action = UIAlertAction(title: " Sure ", style: .default) { acvb in
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
         
        typeAlert.addAction(action)
        
       typeAlert.setValue(NSAttributedString(
           string: self.restobuingd(Cubecm: "Bllaofcgkm vUcslexr"),
           attributes: [.foregroundColor: UIColor.systemOrange]
       ), forKey: "attributedTitle")
       let candelelTile = self.restobuingd(Cubecm: "Cuasntcpeol")
        typeAlert.addAction(UIAlertAction(title: candelelTile, style: .cancel))
        
        self.present(typeAlert, animated: true)
    }
    func aGopdgerCCCUIAlert(withihTITLe:String = "Report Video!" ,resonsongall:[String] = [
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
            self.aGopdgerCCCUIAlert(withihTITLe: self.restobuingd(Cubecm: "Rqekpzojrytn tUvsnebr"),resonsongall:["Harassment or Bullying","Inappropriate Content","Spam or Fraud","Impersonation"])
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
