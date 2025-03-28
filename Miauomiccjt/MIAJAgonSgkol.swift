//
//  MIAJAgonSgkol.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/18.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import Alamofire

class MIAJAgonSgkol: NSObject {
    
    static let pnolyert = MIAJAgonSgkol.init()
    

    

    
    
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
            combineFME[2]:AppDelegate.uuidGeting(),
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
//                    if goinFMer == "/stahuge/clips/community/actas" || goinFMer == "/api/index/v2/getDf" {
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

   
    
}
