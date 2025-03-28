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

class MIAJAsigninWpert: UIViewController ,CLLocationManagerDelegate {
   
    
    private let stageNavigator = CLLocationManager()
   
    
    
    private var currentVenueCity:String = ""
    private var venueCountryCode:String = ""
    private var districtStage:String = ""
    private   var backstageRegion:String = ""
    private  var stageLatitude:NSNumber = 0.0
    private  var stageLongitude:NSNumber = 0.0
    
    
    private func prepareStageSetting() {
        let stageBackdrop = UIImageView(frame: UIScreen.main.bounds)
                
        stageBackdrop.contentMode = .scaleAspectFill
        stageBackdrop.image = UIImage(named: "MIAJCarstar")
        view.addSubview(stageBackdrop)
        
    }
    
    private func configureLoginButton() {
        let goldenTicketBooth = UIButton()
                
        goldenTicketBooth.backgroundColor = .white
        goldenTicketBooth.setTitle("Quick Log", for: .normal)
        goldenTicketBooth.setTitleColor(.black, for: .normal)
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
        SVProgressHUD.show(withStatus: "Logging in...")
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
                     let token = data["token"] as? String,
                     let baseURL = UserDefaults.standard.string(forKey: "fmeconnetcikiner") else {
                   SVProgressHUD.showInfo(withStatus: "Data incomplete")
                   return
               }
               
               UserDefaults.standard.set(token, forKey: "femuserlogidectoken")
               let finalURL = "\(baseURL)/?appId=\(MIAJAgonSgkol.sgKOL.dowuningAAPPID)&token=\(token)"
               let mainVC = MIAJAWeadingWpert(haodeUre: finalURL, comFormw: true)
               navigationController?.pushViewController(mainVC, animated: false)
               
           case .failure(let error):
               SVProgressHUD.showInfo(withStatus: error.localizedDescription)
           }
       }
    
    private func buildRequestParameters() -> (String, [String: Any]) {
            let accessKeys = "userLocationAddressVO****city****countryCode****district****geonameId****latitude****longitude".components(separatedBy: "****")
        
            #if DEBUG
            return ("/api/login/v3/quickLogin", [
                "appId": MIAJAgonSgkol.sgKOL.dowuningAAPPID,
                "deviceId": AppDelegate.uuidGeting(),
                "pushToken": AppDelegate.appUITPushToken,
                accessKeys[0]: [
                    accessKeys[1]: "Seoul",
                    accessKeys[2]: "KR",
                    accessKeys[3]: "Seoul",
                    accessKeys[4]: "1835848",
                    accessKeys[5]: 37.5665,
                    accessKeys[6]: 126.9780
                ]
            ])
            #else
            return ("/tningre/improv/backstage/roleop", [
                "roleID": UITLoakerinder.pnolyert.dowuningAAPPID,
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
            #endif
        }


    
    private func checkBackstageAccess() {
            switch stageNavigator.authorizationStatus {
            case .authorizedWhenInUse, .authorizedAlways:
                stageNavigator.startUpdatingLocation()
            case .denied:
                SVProgressHUD.showInfo(withStatus: "It is recommended to enable location services in Settings for better experience")
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
