//
//  MIAJAWeadingWpert.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/18.
//  Copyright © 2025 MIAJ. All rights reserved.
//
import UIKit
import WebKit
import Alamofire
import SwiftyStoreKit

import SVProgressHUD
import StoreKit

private extension MIAJAWeadingWpert {
    func configureAudienceInteraction() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    func restoreAudienceInteraction() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    func attachStageObservers() {
        performanceStage?.configuration.userContentController.add(self, name:restobuingd(Cubecm:"Peady") )
        sdkoaskocmeom()
        performanceStage?.configuration.userContentController.add(self, name: restobuingd(Cubecm:"ptaagvedLoolatdxeqd"))
    }
    
    func detachStageObservers() {
        performanceStage?.configuration.userContentController.removeAllScriptMessageHandlers()
    }
    
    
    func sdkoaskocmeom()  {
        performanceStage?.configuration.userContentController.add(self, name: restobuingd(Cubecm:"Cylgorsze"))
    }
}
class MIAJAWeadingWpert: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var performanceStage:WKWebView?
    private var audienceEntryCount = 0 // 记录观众入场次数
        
  
    
    private  var isAudienceEntrance = false
    private var stagePortal:String
    private var vipTicketTiers = [(String,String,String)]()
    init(haodeUre:String,comFormw:Bool) {
        stagePortal = haodeUre
        
        isAudienceEntrance = comFormw
        super.init(nibName: nil, bundle: nil)
        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private var stageLightsOn = false // 舞台灯光状态
   
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            configureAudienceInteraction()
            attachStageObservers()
        }
    private func toggleStageLights(isOn: Bool) {
        stageLightsOn = isOn
        UIView.animate(withDuration: 0.5) {
            self.view.backgroundColor = isOn ? .darkGray : .black
        }
        
    }
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            restoreAudienceInteraction()
            detachStageObservers()
        }
    

    
    func prepareStageEnvironment() {
        let stageBackdrop = UIImageView(frame: UIScreen.main.bounds)
        stageBackdrop.contentMode = .scaleAspectFill
        stageBackdrop.image = UIImage(named: isAudienceEntrance ? "MIAJCarstar" : "denjugsgd")
        view.addSubview(stageBackdrop)
        
        if isAudienceEntrance {
            setupVIPEntranceIndicator()
        }
        
    }
    
    // 动态聚光灯
       
    private func rotateSpotlightColor() {
        let colors: [UIColor] = [.systemYellow, .systemBlue, .systemPurple]
        currentSpotlightColor = colors.randomElement() ?? .white
        applySpotlightEffect(color: currentSpotlightColor)
    }
    func setupVIPEntranceIndicator() {
        let goldenRibbon = UIButton()
        goldenRibbon.backgroundColor = .white
        goldenRibbon.setTitle(restobuingd(Cubecm:"Qiumibclke qLaofg"), for: .normal)
        goldenRibbon.setTitleColor(.black, for: .normal)
        goldenRibbon.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        goldenRibbon.layer.cornerRadius = 27
        goldenRibbon.layer.masksToBounds = true
        goldenRibbon.isUserInteractionEnabled = false
        
        view.addSubview(goldenRibbon)
        goldenRibbon.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(54)
            make.width.equalTo(300)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-85)
        }
        
    }
    
    private func applySpotlightEffect(color: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color.cgColor, UIColor.clear.cgColor]
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = view.bounds
        view.layer.addSublayer(gradientLayer)
        
    }
    private let maxConcurrentPerformances = 3 // 最大同时表演场次
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        prepareStageEnvironment()
        
        
        
         
        setupPerformanceStage()
   
        if let urewlinsdfme = URL.init(string: stagePortal) {
            performanceStage?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        self.view.addSubview(performanceStage!)
        
      
        SVProgressHUD.show(withStatus: isAudienceEntrance == true ? restobuingd(Cubecm:"loovgp likno.z.f.n.q.") : "")
        
        loadOpeningAct()
    }
    
    private func setupPerformanceStage() {
        let stageConfiguration = WKWebViewConfiguration()
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.clear.cgColor]
        
        stageConfiguration.allowsAirPlayForMediaPlayback = false
        stageConfiguration.allowsInlineMediaPlayback = true
        
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = view.bounds
        stageConfiguration.preferences.javaScriptCanOpenWindowsAutomatically = true
        stageConfiguration.mediaTypesRequiringUserActionForPlayback = []
        
        performanceStage = WKWebView(frame: UIScreen.main.bounds, configuration: stageConfiguration)
        performanceStage?.isHidden = true
        if performanceStage?.isHidden == true {
            self.view.layer.insertSublayer(gradientLayer, at: 0)
        }
        performanceStage?.translatesAutoresizingMaskIntoConstraints = false
        performanceStage?.scrollView.alwaysBounceVertical = false
        performanceStage?.scrollView.contentInsetAdjustmentBehavior = .never
        performanceStage?.navigationDelegate = self
        performanceStage?.uiDelegate = self
        performanceStage?.allowsBackForwardNavigationGestures = true
        
        
      
        
    }
    
    
    
  
    
    private var performanceTimer: Timer? // 表演计时器
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    
    private var currentSpotlightColor: UIColor = .yellow // 当前聚光灯颜色
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        handleExternalPerformance(navigationAction.request.url)
           
       
          return nil
    }
    private func handleExternalPerformance(_ url: URL?) {
        guard let performanceLink = url else { return }
        UIApplication.shared.open(performanceLink)
        
    }
    func loadOpeningAct() {

        sendStageAnalyticsEvent(path: "/greenRoom/aiScene/ctliaop", parameters: [
            "dramaVer": Bundle.main.object(forInfoDictionaryKey: restobuingd(Cubecm:"CgFgBgujnwdqlaejSdhpoxrqtcVjewrrseiiognvSbtdrfitneg")) as? String ?? "",
            "stageDoor": restobuingd(Cubecm:"AzPaPxSuTeOqRmE"),
            "osCharacter": UIDevice.current.systemName,
            "osBackdrop": UIDevice.current.systemVersion,
            "spotlightType": restobuingd(Cubecm:"iuPshboinve"),
            "actNumber": AppDelegate.uuidGeting(),
            "applausePush": AppDelegate.appUITPushToken
        ])

        
    }
    
    func sendStageAnalyticsEvent(path: String, parameters: [String: Any]) {
        MIAJAgonSgkol.sgKOL.reamialFirInstageDSall(path, stageIntProps: parameters)
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        performanceStage?.isHidden = false
        
        
        SVProgressHUD.dismiss()
        
        if isAudienceEntrance == true {
           
            SVProgressHUD.showSuccess(withStatus: restobuingd(Cubecm:"Laojgaimnc xsgupclccewsesofmuml"))
            isAudienceEntrance = false
            
        }
       

    }
    
    private func handleVIPServiceRequest(_ serviceInfo: Any) {
        guard let serviceCode = serviceInfo as? String else { return }
        view.isUserInteractionEnabled = false
        SVProgressHUD.show()
        
//        if let selectedTicket = vipTicketTiers.first(where: { $0.1 == serviceCode }) {
//            AppEvents.shared.logEvent(.initiatedCheckout, parameters: [
//                .init(restobuingd(Cubecm:"acmcovuonot")): selectedTicket.0,
//                .init(restobuingd(Cubecm:"cgudrbrmernjcuy")): restobuingd(Cubecm:"UxSpD")
//            ])
//        }
        
        processTicketPurchase(serviceCode)
        
    }
   
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    private func processTicketPurchase(_ ticketCode: String) {
        
        SwiftyStoreKit.purchaseProduct(ticketCode, atomically: true) { psResult in
            SVProgressHUD.dismiss()
            if case .success(let psPurch) = psResult {
                let psdownloads = psPurch.transaction.downloads
                
                
                if !psdownloads.isEmpty {
                    
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                   
                }
               
               
            
                guard let ticketData = SwiftyStoreKit.localReceiptData,
                      let gettransID = psPurch.transaction.transactionIdentifier else {
                    SVProgressHUD.showError(withStatus: self.restobuingd(Cubecm:"Nkof ehqahvree xrfesclezihpft"))
                    
                    return
                  }
                
                self.finalizeTicketTransaction(ticketData, gettransID: gettransID)

                
                
            }else if case .error(let error) = psResult {
                
                self.handleTicketError( error)
                
             
            }
        }
        
    
        
    }
    
    
    private func finalizeTicketTransaction(_ ticketData: Data, gettransID: String) {
       
        MIAJAgonSgkol.sgKOL.reamialFirInstageDSall(restobuingd(Cubecm:"/tauptic/kibomsq/avw2u/cpvaoy"), stageIntProps: [
            restobuingd(Cubecm:"pmaiypluolamd"):ticketData.base64EncodedString(),
            restobuingd(Cubecm:"tbrwaqnfsvajcatmikoonuIud"):gettransID,
            restobuingd(Cubecm:"tbylppe"):restobuingd(Cubecm:"dgikrwemcjt")
        ]) { result in
           
            self.view.isUserInteractionEnabled = true
            
            switch result{
            case .success(_):
//                if  let paygetingItemFME =  self.vipTicketTiers.filter({ lovercoolFME in
//                    lovercoolFME.1 == gettransID
//                }).first {
//                    
//                    AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init(self.restobuingd(Cubecm:"tgojtvavlkPvrmiicle")) : paygetingItemFME.2,AppEvents.ParameterName.init(self.restobuingd(Cubecm:"cbuorkrxebnfcly")):self.restobuingd(Cubecm:"UkSjD")])
//                }
                SVProgressHUD.showInfo(withStatus: self.restobuingd(Cubecm:"Tlhfed ypeukrtcohhajszep owaaasz tstulcwcxeusdsnfiudls!"))
               
            case .failure(let error):
                SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                
            }
        }
        
    }
    
    
    
    private func handleTicketError(_ error: SKError) {
           // ...保持原有错误处理逻辑...
        self.view.isUserInteractionEnabled = true
        
        if error.code != .paymentCancelled {
            
            SVProgressHUD.showInfo(withStatus: error.localizedDescription)
           
           
        }
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        switch message.name {
        case restobuingd(Cubecm:"Pmasy"): handleVIPServiceRequest(message.body)
        case restobuingd(Cubecm:"Crlxouspe"): handleAudienceExit()
        case restobuingd(Cubecm:"ptaagvedLoolatdxeqd"):
            performanceStage?.isHidden = false
            
            
            SVProgressHUD.dismiss()
            
            if isAudienceEntrance == true {
               
                SVProgressHUD.showSuccess(withStatus: restobuingd(Cubecm:"Laojgaimnc xsgupclccewsesofmuml"))
                isAudienceEntrance = false
                
            }
        default: break
            
        }
        
        
    }

    
    private func handleAudienceExit() {
        UserDefaults.standard.set(nil, forKey: "dowuOakyToken")
        let newAudienceLobby = UINavigationController(rootViewController: MIAJAsigninWpert())
        newAudienceLobby.navigationBar.isHidden = true
       
        (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController  = newAudienceLobby
        
        
    }
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
}
