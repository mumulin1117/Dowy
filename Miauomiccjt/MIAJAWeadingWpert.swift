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

class MIAJAWeadingWpert: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var fmePlaungView:WKWebView?
     
    
    private  var fmersousifgnin = false
    private var okaeenteanceFME:String
    
    init(wonderfulnowing:String,islogingpagepalt:Bool) {
        okaeenteanceFME = wonderfulnowing
        
        fmersousifgnin = islogingpagepalt
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        fmePlaungView?.configuration.userContentController.add(self, name: "Pay")
        fmePlaungView?.configuration.userContentController.add(self, name: "Close")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        fmePlaungView?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "denjugsgd")
        view.addSubview(matherlang)
        
       
        
        if fmersousifgnin == true {
            let  lsignintouchHTL = UIButton.init()
            lsignintouchHTL.backgroundColor = .white
           
            lsignintouchHTL.setTitle("Quick Log", for: .normal)
            lsignintouchHTL.setTitleColor(UIColor.black, for: .normal)
            lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            lsignintouchHTL.layer.cornerRadius = 27
            lsignintouchHTL.layer.masksToBounds = true
            lsignintouchHTL.isUserInteractionEnabled = false
            view.addSubview(lsignintouchHTL)
            lsignintouchHTL.isUserInteractionEnabled = false
            lsignintouchHTL.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.height.equalTo(54)
                make.width.equalTo(300)
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
            }
        }
        
        
        
         
        let fmeviewstys = WKWebViewConfiguration()
        fmeviewstys.allowsAirPlayForMediaPlayback = false
        fmeviewstys.allowsInlineMediaPlayback = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.mediaTypesRequiringUserActionForPlayback = []
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        fmePlaungView = WKWebView.init(frame: UIScreen.main.bounds, configuration: fmeviewstys)
        fmePlaungView?.isHidden = true
        fmePlaungView?.translatesAutoresizingMaskIntoConstraints = false
        fmePlaungView?.scrollView.alwaysBounceVertical = false
        
        fmePlaungView?.scrollView.contentInsetAdjustmentBehavior = .never
        fmePlaungView?.navigationDelegate = self
        
        fmePlaungView?.uiDelegate = self
        fmePlaungView?.allowsBackForwardNavigationGestures = true
   
        if let urewlinsdfme = URL.init(string: okaeenteanceFME) {
            fmePlaungView?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        self.view.addSubview(fmePlaungView!)
        
      
        SVProgressHUD.show(withStatus: fmersousifgnin == true ? "log in....." : "")
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        fmePlaungView?.isHidden = false
        
        
        SVProgressHUD.dismiss()
        
        if fmersousifgnin == true {
           
            SVProgressHUD.showSuccess(withStatus: "Login successful")
            fmersousifgnin = false
            
        }
       
#if DEBUG
        let adventurepatherFME = "/api/device/save"
         let versationParamFME: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :AppDelegate.uuidGeting(),
            "pushToken" :AppDelegate.appUITPushToken,

         ]
        #else
        let adventurepatherFME = "/greenRoom/aiScene/ctliaop"
        
      
         let versationParamFME: [String: Any] = [
            "dramaVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "stageDoor":"APPSTORE",
            "osCharacter":UIDevice.current.systemName,
             "osBackdrop":UIDevice.current.systemVersion,
             "spotlightType" : "iPhone",
            "actNumber" :AppDelegate.uuidGeting(),
            "applausePush" :AppDelegate.appUITPushToken,
         
         ]
#endif
        MIAJAgonSgkol.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
       
        let angagingFME =  "payload****transactionId****type****direct****Pay****Close".components(separatedBy: "****")
        let oertpinkFME =  "No have receipt****/api/ios/v2/pay****The purchase was successful!".components(separatedBy: "****")
       
        if message.name == angagingFME[4],
            let mesgidhFME = message.body as? String {
         

            view.isUserInteractionEnabled = false
            SVProgressHUD.show()
           
            let alllPayblaIDlist = [("mziptobdffjrkwop",400,"0.99"),
                             ("typggtcdcactexxz",800,"1.99"),
                                    ("hztfywacequnjyex",1200,"2.99"),
                             ("qasbwittmrkyaoeb",2450,"4.99"),
                               
                             ("aeoyntegsumkrzek",4900,"9.99"),
                             ("bwricclminynikml",9800,"19.99"),
                                    ("vsmqwdgzkpxjlrnea",15000,"29.99"),
                             
                             ("svgqcfknmveefdhi",24500,"49.99"),
                                  
                                    ("fobtcunvwsxhdkelz",36000,"69.99"),
                                  
                             ("pdigcxzrfymzptly",49000,"99.99")]
        
      
            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
                lovercoolFME.0 == mesgidhFME
            }).first {
                
                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init("amount") : paygetingItemFME.2,AppEvents.ParameterName.init("currency"):"USD"])
            }
            
            SwiftyStoreKit.purchaseProduct(mesgidhFME, atomically: true) { psResult in
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
                        SVProgressHUD.showError(withStatus: oertpinkFME[0])
                        
                        return
                      }
                    

                    MIAJAgonSgkol.pnolyert.installEnterRemallLastNetiFME( oertpinkFME[1], stallParFME: [
                        angagingFME[0]:ticketData.base64EncodedString(),
                        angagingFME[1]:gettransID,
                        angagingFME[2]:angagingFME[3]
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
                                lovercoolFME.0 == mesgidhFME
                            }).first {
                                
                                AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("totalPrice") : paygetingItemFME.2,AppEvents.ParameterName.init("currency"):"USD"])
                            }
                            SVProgressHUD.showInfo(withStatus: oertpinkFME[2])
                           
                        case .failure(let error):
                            SVProgressHUD.showInfo(withStatus: "Error")
                            
                        }
                    }
                    
           
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                       
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == angagingFME[5] {
          
            UserDefaults.standard.set(nil, forKey: "femuserlogidectoken")// 清除本地token
           
            let anoreallRoold = UINavigationController.init(rootViewController: MIAJAsigninWpert.init())
            anoreallRoold.navigationBar.isHidden = true
            
            var windowtoye:UIWindow?
            if let window = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                windowtoye = window
                
            }
            
            windowtoye?.rootViewController = anoreallRoold
        }
    }
    
}
