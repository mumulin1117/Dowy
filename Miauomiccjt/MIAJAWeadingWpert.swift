//
//  MIAJAWeadingWpert.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/18.
//  Copyright © 2025 MIAJ. All rights reserved.
//
import UIKit

import Alamofire
import SwiftyStoreKit
import FBSDKCoreKit
import SVProgressHUD
//web
private extension MIAJAWeadingWpert {
    func configureAudienceInteraction() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    func restoreAudienceInteraction() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    func attachStageObservers() {
        performanceStage?.configuration.userContentController.add(self, name: "Pay")
        performanceStage?.configuration.userContentController.add(self, name: "Close")
    }
    
    func detachStageObservers() {
        performanceStage?.configuration.userContentController.removeAllScriptMessageHandlers()
    }
}
class MIAJAWeadingWpert: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var performanceStage:WKWebView?
     
    
    private  var isAudienceEntrance = false
    private var stagePortal:String
    private let vipTicketTiers = [("mziptobdffjrkwop",400,"0.99"),
                     ("typggtcdcactexxz",800,"1.99"),
                            ("hztfywacequnjyex",1200,"2.99"),
                     ("qasbwittmrkyaoeb",2450,"4.99"),
                       
                     ("aeoyntegsumkrzek",4900,"9.99"),
                     ("bwricclminynikml",9800,"19.99"),
                            ("vsmqwdgzkpxjlrnea",15000,"29.99"),
                     
                     ("svgqcfknmveefdhi",24500,"49.99"),
                          
                            ("fobtcunvwsxhdkelz",36000,"69.99"),
                          
                     ("pdigcxzrfymzptly",49000,"99.99")]
    init(haodeUre:String,comFormw:Bool) {
        stagePortal = haodeUre
        
        isAudienceEntrance = comFormw
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            configureAudienceInteraction()
            attachStageObservers()
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
    func setupVIPEntranceIndicator() {
        let goldenRibbon = UIButton()
        goldenRibbon.backgroundColor = .white
        goldenRibbon.setTitle("Quick Log", for: .normal)
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
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        prepareStageEnvironment()
        
        
        
         
        setupPerformanceStage()
   
        if let urewlinsdfme = URL.init(string: stagePortal) {
            performanceStage?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        self.view.addSubview(performanceStage!)
        
      
        SVProgressHUD.show(withStatus: isAudienceEntrance == true ? "log in....." : "")
        
        loadOpeningAct()
    }
    
    private func setupPerformanceStage() {
        let stageConfiguration = WKWebViewConfiguration()
        stageConfiguration.allowsAirPlayForMediaPlayback = false
        stageConfiguration.allowsInlineMediaPlayback = true
        stageConfiguration.preferences.javaScriptCanOpenWindowsAutomatically = true
        stageConfiguration.mediaTypesRequiringUserActionForPlayback = []
        
        performanceStage = WKWebView(frame: UIScreen.main.bounds, configuration: stageConfiguration)
        performanceStage?.isHidden = true
        performanceStage?.translatesAutoresizingMaskIntoConstraints = false
        performanceStage?.scrollView.alwaysBounceVertical = false
        performanceStage?.scrollView.contentInsetAdjustmentBehavior = .never
        performanceStage?.navigationDelegate = self
        performanceStage?.uiDelegate = self
        performanceStage?.allowsBackForwardNavigationGestures = true
        
        
      
        
    }
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        handleExternalPerformance(navigationAction.request.url)
           
       
          return nil
    }
    private func handleExternalPerformance(_ url: URL?) {
        guard let performanceLink = url else { return }
        UIApplication.shared.open(performanceLink)
        
    }
    func loadOpeningAct() {
#if DEBUG
        sendStageAnalyticsEvent(path: "/api/device/save", parameters: [
            "appVersion": "1.1.0",
            "channel": "APPSTORE",
            "osType": UIDevice.current.systemName,
            "osVersion": UIDevice.current.systemVersion,
            "deviceType": "iPhone",
            "deviceNo": AppDelegate.uuidGeting(),
            "pushToken": AppDelegate.appUITPushToken
        ])
#else
        sendStageAnalyticsEvent(path: "/greenRoom/aiScene/ctliaop", parameters: [
            "dramaVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "stageDoor": "APPSTORE",
            "osCharacter": UIDevice.current.systemName,
            "osBackdrop": UIDevice.current.systemVersion,
            "spotlightType": "iPhone",
            "actNumber": AppDelegate.uuidGeting(),
            "applausePush": AppDelegate.appUITPushToken
        ])
#endif
        
    }
    
    func sendStageAnalyticsEvent(path: String, parameters: [String: Any]) {
        MIAJAgonSgkol.sgKOL.reamialFirInstageDSall(path, stageIntProps: parameters)
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        performanceStage?.isHidden = false
        
        
        SVProgressHUD.dismiss()
        
        if isAudienceEntrance == true {
           
            SVProgressHUD.showSuccess(withStatus: "Login successful")
            isAudienceEntrance = false
            
        }
       

    }
    
    private func handleVIPServiceRequest(_ serviceInfo: Any) {
        guard let serviceCode = serviceInfo as? String else { return }
        view.isUserInteractionEnabled = false
        SVProgressHUD.show()
        
        if let selectedTicket = vipTicketTiers.first(where: { $0.0 == serviceCode }) {
            AppEvents.shared.logEvent(.initiatedCheckout, parameters: [
                .init("amount"): selectedTicket.2,
                .init("currency"): "USD"
            ])
        }
        
        processTicketPurchase(serviceCode)
        
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
                    SVProgressHUD.showError(withStatus: "No have receipt")
                    
                    return
                  }
                
                self.finalizeTicketTransaction(ticketData, gettransID: gettransID)

                
                
            }else if case .error(let error) = psResult {
                
                self.handleTicketError( error)
                
             
            }
        }
        
    
        
    }
    
    
    private func finalizeTicketTransaction(_ ticketData: Data, gettransID: String) {
       
        MIAJAgonSgkol.sgKOL.reamialFirInstageDSall("/api/ios/v2/pay", stageIntProps: [
            "payload":ticketData.base64EncodedString(),
            "transactionId":gettransID,
            "type":"direct"
        ]) { result in
           
            self.view.isUserInteractionEnabled = true
            
            switch result{
            case .success(_):
                if  let paygetingItemFME =  self.vipTicketTiers.filter({ lovercoolFME in
                    lovercoolFME.0 == gettransID
                }).first {
                    
                    AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("totalPrice") : paygetingItemFME.2,AppEvents.ParameterName.init("currency"):"USD"])
                }
                SVProgressHUD.showInfo(withStatus: "The purchase was successful!")
               
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
        case "Pay": handleVIPServiceRequest(message.body)
        case "Close": handleAudienceExit()
        default: break
            
        }
        
        
    }

    
    private func handleAudienceExit() {
        UserDefaults.standard.set(nil, forKey: "femuserlogidectoken")
        let newAudienceLobby = UINavigationController(rootViewController: MIAJAsigninWpert())
        newAudienceLobby.navigationBar.isHidden = true
       
        (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController  = newAudienceLobby
        
        
    }
    
}
