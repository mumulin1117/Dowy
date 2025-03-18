//
//  MIAJAgonSgkol.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/3/18.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import Alamofire

class MIAJAgonSgkol: NSObject {
    
    static let pnolyert = MIAJAgonSgkol.init()
    
    var installednaesFME:[String]{
        var nsmelishfappFME = [String]()
        
        if let fmeAppinstallIDs = URL.init(string: "wechat://"), UIApplication.shared.canOpenURL(fmeAppinstallIDs) {
            nsmelishfappFME.append("weiChat")
        }
        if let fmeAppinstallIDs = URL.init(string: "alipay://"), UIApplication.shared.canOpenURL(fmeAppinstallIDs) {
            nsmelishfappFME.append("Aliapp")
        }
        
        if let fmeAppinstallIDs = URL.init(string: "mqq://"), UIApplication.shared.canOpenURL(fmeAppinstallIDs) {
            nsmelishfappFME.append("qq")
        }
        
        
        if let fmeAppinstallIDs = URL.init(string: "whatsapp://"), UIApplication.shared.canOpenURL(fmeAppinstallIDs) {
            nsmelishfappFME.append("WhatsApp")
        }
        
        if let fmeAppinstallIDs = URL.init(string: "instagram://"), UIApplication.shared.canOpenURL(fmeAppinstallIDs) {
            nsmelishfappFME.append("Instagram")
        }
        if let fmeAppinstallIDs = URL.init(string: "fb://"), UIApplication.shared.canOpenURL(fmeAppinstallIDs) {
            nsmelishfappFME.append("Facebook")
        }
        if let fmeAppinstallIDs = URL.init(string: "tiktok://"), UIApplication.shared.canOpenURL(fmeAppinstallIDs) {
            nsmelishfappFME.append("TikTok")
        }
        
        if let fmeAppinstallIDs = URL.init(string: "tweetie://"), UIApplication.shared.canOpenURL(fmeAppinstallIDs) {
            nsmelishfappFME.append("twitter")
        }
        
        if let fmeAppinstallIDs = URL.init(string: "comgooglemaps://"), UIApplication.shared.canOpenURL(fmeAppinstallIDs) {
            nsmelishfappFME.append("GoogleMaps")
        }
        
        return nsmelishfappFME
    }
    
    
    
    var fmeboadrdkeysLaungs:[String]{
        var langsFme = [String]()
        for moder in UITextInputMode.activeInputModes {
            if let laungssfme = moder.primaryLanguage {
                langsFme.append(laungssfme)
            }
        }
        return langsFme
    }
    
    
    var hustlangsAllLocalFME:[String]{
        var launlistvaf = [String]()
        let prefersVAF = NSLocale.preferredLanguages
        for localeIdentifier in prefersVAF {
            let locale = NSLocale(localeIdentifier: localeIdentifier)
            
            if let languageCode = locale.object(forKey: .languageCode) as? String{
                launlistvaf.append(languageCode)
                
            }
        }
        
        return launlistvaf
    }
    
    var onlyidduserFME:String{
        
        guard  let gente = self.gefetchOnlyUserIDDKeyFMEc() else{
            
            let createIDfme  = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
            self.addOnlyUserIDDKeyFMEchain(onlyIDFME: createIDfme)
            return createIDfme
            
        }
        return gente.uuidString
        
    }
    
    
#if DEBUG
    let appleidSmalllWrite = "11111111"
#else
    let appleidSmalllWrite = "66933920"
#endif
    
    func installEnterRemallLastNetiFME(_ goinFMer:String,stallParFME:[String: Any], lasterVBLockFME: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {
        
        
        
#if DEBUG
        let usrlinkSmalllWrite = "https://api.cphub.link"
#else
        let usrlinkSmalllWrite = "https://api.rnmykmn.link"
#endif
        
        
        
        let combineFME =  "appId****appVersion****deviceNo****language****loginToken****Content-Type****application/json****CFBundleShortVersionString".components(separatedBy: "****")
        print("-------------------")
        print(stallParFME)
        
        
        
        guard let compltelujingREZU = URL(string: usrlinkSmalllWrite + goinFMer) else {
            return
        }
        
        AF.request(compltelujingREZU, method: .post, parameters: stallParFME, encoding: JSONEncoding.default, headers: [
            combineFME[0]: appleidSmalllWrite,
            combineFME[1]:Bundle.main.object(forInfoDictionaryKey: combineFME[7]) as? String ?? "1.1",
            combineFME[2]:onlyidduserFME,
            combineFME[3]:Locale.current.languageCode ?? "",
            combineFME[4]:UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String ?? "",
            combineFME[5]: combineFME[6]
        ])
        .responseJSON { response in
            
            switch response.result {
            case .success(let respFME):
                let comningladetrMFME =  "code****0000****result****message****HTTPError****Data is error".components(separatedBy: "****")
                if let olertlio = respFME as? [String: Any] {
                    print("Response: \(olertlio)")
                    
#if DEBUG
//                    if goinFMer == "/melody/pulse/community/grooveZ" || goinFMer == "/api/index/v2/getDf" {
//                        SVProgressHUD.showProgress(0.5, status: self.dictionaryToString(olertlio))
//                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 10, execute: DispatchWorkItem(block: {
//                            SVProgressHUD.dismiss()
//                        }))
//
//                    }
                    
#else
#endif
                    if let Codvrgvdf = olertlio[comningladetrMFME[0]] as? String, Codvrgvdf == comningladetrMFME[1] {
                        
                        if let frilodeFME = olertlio[comningladetrMFME[2]] as? [String: Any] {
                            
                            lasterVBLockFME(.success(frilodeFME))
                        }else{
                            lasterVBLockFME(.success(nil))
                        }
                        
                    } else {
                        let codeFMEre = olertlio[comningladetrMFME[3]] as? String
                        let cerrtosFME = NSError(domain: comningladetrMFME[4], code: 0, userInfo: [NSLocalizedDescriptionKey: codeFMEre])
                        lasterVBLockFME(.failure(cerrtosFME))
                    }
                    
                }else{
                    
                    let cerrtosFME = NSError(domain: comningladetrMFME[4], code: 0, userInfo: [NSLocalizedDescriptionKey: comningladetrMFME[5]])
                    lasterVBLockFME(.failure(cerrtosFME))
                }
                
            case .failure(let error):
                
                print(error)
                lasterVBLockFME(.failure(error))
            }
            
        }
        
    }
#if DEBUG
    func dictionaryToString(_ dictionary: [String: Any]) -> String {
        var result = ""
        
        for (key, value) in dictionary {
            // 将键和值转换为字符串（如果它们是可转换的）
            let keyString = String(describing: key)
            let valueString = String(describing: value)
            
            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
            result += "\(keyString): \(valueString)\n"
        }
        
        // 移除最后一个换行符（如果字典不为空）
        if !result.isEmpty {
            result = String(result.dropLast())
        }
        
        return result
    }
#else
#endif
    
    func checkphonertvpiernLinkcted()->Bool{
        
        var ihingterFME = false
        
        let combineFME =  "__SCOPED__****tap****tun****ipsec****ppp".components(separatedBy: "****")
        if let dict = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String : Any],
           let scopeFME = dict[combineFME[0]] as? [String : Any] {
            
            let keysFME = scopeFME.keys.map { $0 as String }
            
            
            for kefMey in keysFME {
                if kefMey.contains(combineFME[1]) || kefMey.contains(combineFME[2]) || kefMey.contains(combineFME[3]) || kefMey.contains(combineFME[4]) {
                    
                    ihingterFME = true
                    
                    break
                    
                }
            }
        }
        
        return ihingterFME
        
        
        
    }
    
    
    
    private func addOnlyUserIDDKeyFMEchain(onlyIDFME:String) {
        
        
        
        let asveDaterFME = onlyIDFME.data(using: .utf8)!
        
        let queryFMER: [CFString: Any] = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: "com.aunicmu.coulas",
            kSecValueData: asveDaterFME,
            kSecAttrAccessible: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        ]
        
        
        SecItemDelete(queryFMER as CFDictionary)
        let _ = SecItemAdd(queryFMER as CFDictionary, nil)
        
        
    }
    
    
    private  func gefetchOnlyUserIDDKeyFMEc() -> UUID? {
        
        let queryFMRE: [CFString: Any] = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: "com.aunicmu.coulas",
            kSecReturnData: true as CFBoolean,
            kSecMatchLimit: kSecMatchLimitOne,
            kSecAttrAccessible: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        ]
        
        var dreataFMETypeRef: AnyObject?
        let resfliFME = SecItemCopyMatching(queryFMRE as CFDictionary, &dreataFMETypeRef)
        
        if resfliFME == errSecSuccess {
            if let data = dreataFMETypeRef as? Data,
               let idstrFME = String(data: data, encoding: .utf8) {
                return UUID(uuidString: idstrFME)
            }
        }
        
        return nil
    }
    
    
}
