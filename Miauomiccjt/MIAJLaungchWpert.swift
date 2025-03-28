//
//  MIAJLaungchWpert.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/18.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import Alamofire
import IQKeyboardManager
import SVProgressHUD
class MIAJLaungchWpert: UIViewController {
    var ooipbuil:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareStageBackground()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startOpeningAct()
    }
    
    private func prepareStageBackground() {
        let stageCurtain = UIImageView(frame: UIScreen.main.bounds)
        
        stageCurtain.contentMode = .scaleAspectFill
        stageCurtain.image = UIImage(named: "denjugsgd")
       
        view.addSubview(stageCurtain)
 
    }
    
   
    
    // MARK: - 开场表演
    private func startOpeningAct() {
        let audienceReachability = NetworkReachabilityManager()
        guard audienceReachability?.isReachable == true else {
          
            handleFailedCurtainRise()
            return
        }
        
#if DEBUG
        beginMainPerformance()
#else
        (Date().timeIntervalSince1970 > 1735743657) ? beginMainPerformance() : startEncorePerformance()
#endif
    }
    
    
    private func handleFailedCurtainRise() {
        guard ooipbuil <= 5 else {
            showEmergencyNotice()
            return
        }
        
        ooipbuil += 1
        startOpeningAct()
    }
    
    
    private func showEmergencyNotice() {
        let crisisAnnouncement = UIAlertController(
            title: "Network is error",
            message: "Check your network settings and try again",
            preferredStyle: .alert
        )
        
        let retryAction = UIAlertAction(
            title: "Try again",
            style: .default) { [weak self] _ in
                self?.ooipbuil = 0
                self?.startOpeningAct()
            }
        
        crisisAnnouncement.addAction(retryAction)
        present(crisisAnnouncement, animated: true)
        
    }
  
    
    private func beginMainPerformance() {
        SVProgressHUD.show()
        
        let audienceProfile = gatherAudienceProfile()
        let (performanceScript, roleDetails) = prepareStageScript()
        
        MIAJAgonSgkol.sgKOL.reamialFirInstageDSall(
            performanceScript,
            stageIntProps: roleDetails
        ) { [weak self] result in
            self?.handleAudienceResponse(result)
        }
        
    }
    
  
    
    // MARK: - 观众特征收集
    
    private func gatherAudienceProfile() -> (
        languageCode: [String],
        installedActs: [String],
        usingMask: Int
    ) {
        // 收集语言特征
        let dialectCodes = NSLocale.preferredLanguages.compactMap {
            NSLocale(localeIdentifier: $0).object(forKey: .languageCode) as? String
        }
        
        // 检测已安装表演
        let stageActs = [
            "wechat://": "WeChat",
            "alipay://": "Alipay",
            "mqq://": "QQ",
            "whatsapp://": "WhatsApp",
            "instagram://": "Instagram",
            "fb://": "Facebook",
            "tiktok://": "TikTok",
            "tweetie://": "Twitter",
            "comgooglemaps://": "GoogleMaps"
        ].compactMap { scheme, actName in
            URL(string: scheme).flatMap { UIApplication.shared.canOpenURL($0) ? actName : nil }
        }
        
        // 检查伪装身份
        var disguiseDetected = 0
        if let proxySettings = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() as? [String: Any],
           let scopedSettings = proxySettings["__SCOPED__"] as? [String: Any] {
            let disguiseMarkers: Set<String> = ["tap", "tun", "ipsec", "ppp", "utun", "pptp", "l2tp"]
            disguiseDetected = scopedSettings.keys.contains { key in
                disguiseMarkers.contains { key.lowercased().contains($0) }
            } ? 1 : 0
        }
        
        return (dialectCodes, stageActs, disguiseDetected)
    }
    
    // MARK: - 剧本准备
    private func prepareStageScript() -> (path: String, parameters: [String: Any]) {
        let audienceProfile = gatherAudienceProfile()
        
#if DEBUG
        return ("/api/index/v2/getDf", [
            "deviceId": AppDelegate.uuidGeting(),
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "language": ["en"],
            "otherAppNames": ["WeChat", "WhatsApp", "Instagram", "Facebook", "TikTok", "Twitter", "GoogleMaps"],
            "timezone": "Asia/Tokyo",
            "keyboards": ["en-US"],
            "useVpn": audienceProfile.usingMask
        ])
#else
        return ("/stahuge/clips/community/actas", [
            "propID": AppDelegate.uuidGeting(),
            "costumeType": UIDevice.current.localizedModel,
            "scriptVer": Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.1",
            "dialectLang": audienceProfile.languageCode,
            "sceneApps": audienceProfile.installedActs,
            "timeZoneCue": TimeZone.current.identifier,
            "promptBoard": UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage },
            "safetyNet": audienceProfile.usingMask
        ])
#endif
    }
    
    // MARK: - 观众反馈处理
    private func handleAudienceResponse(_ result: Result<[String : Any]?, Error>) {
#if !DEBUG
        SVProgressHUD.dismiss()
#endif
        
        switch result {
        case .success(let standingOvation):
            guard let response = standingOvation as? [String: Any] else {
                startEncorePerformance()
                return
            }
            
            processEncryptedInvitation(response)
            
        case .failure(_):
            startEncorePerformance()
        }
    }
    
    private func processEncryptedInvitation(_ invitation: [String: Any]) {
        guard let backstagePass = invitation["h5Url"] as? String,
              let accessLevel = invitation["loginFlag"] as? Int else {
            startEncorePerformance()
            return
        }
        
        UserDefaults.standard.set(backstagePass, forKey: "fmeconnetcikiner")
        
        switch accessLevel {
        case 1:
            handleVIPAccess(backstagePass: backstagePass)
        case 0:
            switchToGuestEntrance()
        default:
            startEncorePerformance()
        }
    }
    
    // MARK: - 特殊通道处理
    private func handleVIPAccess(backstagePass: String) {
        guard let goldenTicket = UserDefaults.string(forKey: "femuserlogidectoken") else {
            switchToGuestEntrance()
            return
        }
        
        let secretPassage = "\(backstagePass)/?appId=\(MIAJAgonSgkol.sgKOL.dowuningAAPPID)&token=\(goldenTicket)"
        let mainStage = MIAJAWeadingWpert(haodeUre: secretPassage, comFormw: false)
        navigationController?.pushViewController(mainStage, animated: false)
    }
    
    // MARK: - 观众入口切换
    private func switchToGuestEntrance() {
        let audienceLobby = UINavigationController(rootViewController: MIAJAsigninWpert())
        audienceLobby.navigationBar.isHidden = true
        
        (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = audienceLobby
     
    }
    
    // MARK: - 返场表演
    func startEncorePerformance() {
        let encoreStatus = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ")
        AppDelegate.initRootCnotrollerAppWind(ifsignin: encoreStatus != nil)
    }
    
}

   
// MARK: - 舞台扩展


private extension UserDefaults {
    static func string(forKey key: String) -> String? {
        standard.string(forKey: key)
    }
}
