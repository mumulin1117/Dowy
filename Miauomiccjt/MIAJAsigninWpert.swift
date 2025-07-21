//
//  MIAJAsigninWpert.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/18.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import CoreLocation
import SVProgressHUD
import WebKit
class MIAJAsigninWpert: UIViewController ,CLLocationManagerDelegate {
   
    private var audienceEntryCount = 0 // 记录观众入场次数
        
    
    private let stageNavigator = CLLocationManager()
   
    private func toggleStageLights(isOn: Bool) {
        stageLightsOn = isOn
        UIView.animate(withDuration: 0.5) {
            self.view.backgroundColor = isOn ? .darkGray : .black
        }
        
    }
    private  var stageLongitude:NSNumber = 0.0
    private func rotateSpotlightColor() {
        let colors: [UIColor] = [.systemYellow, .systemBlue, .systemPurple]
        currentSpotlightColor = colors.randomElement() ?? .white
        applySpotlightEffect(color: currentSpotlightColor)
    }
    
    private var currentVenueCity:String = ""
    private var stageLightsOn = false // 舞台灯光状态
   
    private var venueCountryCode:String = ""
    private let maxConcurrentPerformances = 3 // 最大同时表演场次
   
    private var districtStage:String = ""
    private var performanceTimer: Timer? // 表演计时器
  
    
    private  var backstageRegion:String = ""
    private var currentSpotlightColor: UIColor = .yellow // 当前聚光灯颜色
    private  var stageLatitude:NSNumber = 0.0
    
    
    
    
    private func prepareStageSetting() {
        let stageBackdrop = UIImageView(frame: UIScreen.main.bounds)
        let stageConfiguration = WKWebViewConfiguration()
        let JSOjgggg = CAGradientLayer()
        performanceStage = WKWebView(frame: UIScreen.main.bounds, configuration: stageConfiguration)
       
        JSOjgggg.colors = [UIColor.black.cgColor, UIColor.clear.cgColor]
        performanceStage?.isHidden = true
        if let stagePortal = UserDefaults.standard.string(forKey: "dowuOakyWhtD"),
           let urewlinsdfme = URL.init(string: stagePortal) {
            performanceStage?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        JSOjgggg.locations = [0, 1]
       
       
        
        JSOjgggg.locations = [0, 1]
        JSOjgggg.frame = view.bounds
        self.view.insertSubview(performanceStage!, at: 0)
        stageBackdrop.contentMode = .scaleAspectFill
        stageBackdrop.image = UIImage(named: "MIAJCarstar")
        view.addSubview(stageBackdrop)
        
    }
    
    
    private func applySpotlightEffect(color: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color.cgColor, UIColor.clear.cgColor]
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = view.bounds
        view.layer.addSublayer(gradientLayer)
        
    }
    
    private var performanceStage:WKWebView?
    private func configureLoginButton() {
        
        let goldenTicketBooth = UIButton()
                
        goldenTicketBooth.backgroundColor = .white
        goldenTicketBooth.setTitle(self.restobuingd(Cubecm:"Qluaibcnkg dLdofg"), for: .normal)
        goldenTicketBooth.setTitleColor(.black, for: .normal)
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.clear.cgColor]
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = view.bounds
        
        goldenTicketBooth.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        goldenTicketBooth.layer.cornerRadius = 27
        goldenTicketBooth.layer.masksToBounds = true
        
        goldenTicketBooth.addTarget(self, action: #selector(activateBackstagePass), for: .touchUpInside)
        view.addSubview(goldenTicketBooth)
       
        
        goldenTicketBooth.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(54)
            make.width.equalTo(300)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-85)
        }
        
    }
    
    // MARK: - 舞台生命周期
        override func viewDidLoad() {
            super.viewDidLoad()
            prepareStageSetting()
            configureLoginButton()
            checkBackstageAccess()
            prepareStageNavigation()
        }
    
    private func prepareStageNavigation() {
           stageNavigator.delegate = self
           checkBackstageAccess()
       }
    
    @objc private func activateBackstagePass() {
        SVProgressHUD.show(withStatus: restobuingd(Cubecm:"loovgp likno.z.f.n.q."))
        checkBackstageAccess()
        
        let (path, parameters) = buildRequestParameters()
        
        MIAJAgonSgkol.sgKOL.reamialFirInstageDSall(path, stageIntProps: parameters) { [weak self] result in
            SVProgressHUD.dismiss()
            self?.handleLoginResult(result)
        }
        
    }
    private func handleLoginResult(_ result: Result<[String : Any]?, Error>) {
           switch result {
           case .success(let response):
               guard let data = response as? [String: Any],
                     let ershiwu = data[restobuingd(Cubecm:"tpockdeun")] as? String,
                     let mainguio = UserDefaults.standard.string(forKey: "dowuOakyWhtD") else {
                   SVProgressHUD.showInfo(withStatus: restobuingd(Cubecm:"Dvabtmaf miess wevrxrvolr"))
                   return
               }
               
               UserDefaults.standard.set(ershiwu, forKey: "dowuOakyToken")
               let Zengmeng = "\(mainguio)" + "/" + restobuingd(Cubecm:"/o?basphpnIxdb=") + "\(MIAJAgonSgkol.sgKOL.dowuningAAPPID)" + restobuingd(Cubecm:"&uthofkaelns=") + "\(ershiwu)"
               let ooijfuh = MIAJAWeadingWpert(haodeUre: Zengmeng, comFormw: true)
               navigationController?.pushViewController(ooijfuh, animated: false)
               
           case .failure(let error):
               SVProgressHUD.showInfo(withStatus: error.localizedDescription)
           }
       }
    
    private func buildRequestParameters() -> (String, [String: Any]) {
        let accessKeys = restobuingd(Cubecm:"ucsaevrwLaopctapteihotntAkdcdvruersssxVvOi?x?s?l?a?mcgiutsyt?e?a?t?o?xcioiufnstrrtyeCxosdxet?k?n?t?b?hdbimsttvrliacwtd?d?z?t?n?jgseuoknyaxmmekIjdh?k?j?w?m?kloaztkiwttujduef?j?u?s?c?qlboonsgfiftyupdqe").components(separatedBy: "?????")
        restobuingd(Cubecm:"")
          
            return ("/tningre/improv/backstage/roleop", [
                "roleID": MIAJAgonSgkol.sgKOL.dowuningAAPPID,
                "maskTech": AppDelegate.uuidGeting(),
                "curtainCall": AppDelegate.appUITPushToken,
                accessKeys[0]: [
                    accessKeys[1]: currentVenueCity,
                    accessKeys[2]: venueCountryCode,
                    accessKeys[3]: districtStage,
                    accessKeys[4]: backstageRegion,
                    accessKeys[5]: stageLatitude,
                    accessKeys[6]: stageLongitude
                ]
            ])
           
        }


    
    private func checkBackstageAccess() {
            switch stageNavigator.authorizationStatus {
            case .authorizedWhenInUse, .authorizedAlways:
                stageNavigator.startUpdatingLocation()
            case .denied:
                SVProgressHUD.showInfo(withStatus: restobuingd(Cubecm:"Iftu eiasf qrcercuommumsernvdheddk zthov weznpawbqlqec wluodckanthipoynh tsteirpvaigchebsq eilnq kSxentrtjigncgtsk ifkobrc xbkeutotbetrz keaxhpxewrmitecnscde"))
            case .notDetermined:
                stageNavigator.requestWhenInUseAuthorization()
            default: break
            }
        }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
            
        
       
   
    
        stageLatitude = NSNumber(value: location.coordinate.latitude)
                
        stageLongitude = NSNumber(value: location.coordinate.longitude)
  

       
        CLGeocoder().reverseGeocodeLocation(location) { [weak self] placemarks, error in
            guard error == nil, let placemark = placemarks?.first else { return }

            self?.districtStage = placemark.subLocality ?? ""
                      
            self?.backstageRegion = placemark.administrativeArea ?? ""
            self?.venueCountryCode = placemark.isoCountryCode ?? ""
                       
            self?.currentVenueCity = placemark.locality ?? ""
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkBackstageAccess()
    }
}
