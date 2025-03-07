//
//  MiAJEisditImmtiom.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import AVFoundation
import SVProgressHUD
class MiAJEisditImmtiom: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    var bloakMIAJ:((Bool) -> Void)?
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            picker.dismiss(animated: true, completion: nil)
            return
        }
        DispatchQueue.main.async {
            self.alipoMineIcon.image = image
           
            picker.dismiss(animated: true, completion: nil)
        }
    }
    

    @IBOutlet weak var gomiun: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ainsertbnh()
        gibenerUsericonh()
       
        alipoMineIcon.layer.cornerRadius = 50
        alipoMineIcon.layer.masksToBounds = true
    }

    
    var currMIAJentusedInfo:Dictionary<String,String>{
        return UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String> ?? [:]
    }
    
   
    func gibenerUsericonh()  {
       
        alipoMineIcon.image = MIAJWuoeImmtion.lognCacheing
        aiopMInenamf.text = currMIAJentusedInfo["MIAJNbbme"]
       
        aiopMInebrtf.text = currMIAJentusedInfo["MIAJBrief"]
       
   }
    
    
    @IBOutlet weak var alipoMineIcon: UIImageView!
    
    @IBOutlet weak var aiopMInenamf: UITextField!
    @IBOutlet weak var aiopMInebrtf: UITextField!
    
    @IBOutlet weak var taingchangerinmaj: UIImageView!
    
    @IBAction func olKoisuger(_ sender: UIButton) {
   
        SVProgressHUD.show()
        
        if let imh = alipoMineIcon.image {
            MIAJWuoeImmtion.lognCacheing = imh
        }
        
       
        
        MiAJEisditImmtiom.updaterudeingfowithNew(naem: aiopMInenamf.text, bnhbrief: aiopMInebrtf.text, blancefpoi: nil)
        
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            let OkseeMIAJ0 =  self.restobuingd(Cubecm: "Eodgifty lSbujcpcjeqshstfduhlp!")
            SVProgressHUD.showSuccess(withStatus: OkseeMIAJ0)
            self.dismiss(animated: true)
            
            self.bloakMIAJ?(true)
        }))
        
    }
    
    
    class  func updaterudeingfowithNew(naem:String? = nil,bnhbrief:String? = nil,blancefpoi:String? = nil)  {
        
      
        var inguser = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String> ?? [:]
      
      
        
        let infoID = inguser["MIAJID"] ?? ""
        
        if let namiert = naem {
            inguser["MIAJNbbme"] = namiert
        }
        
        if let briefert = bnhbrief {
            inguser["MIAJBrief"] = briefert
        }
        
        
        if let balance = blancefpoi {
            inguser["MIAJCoinB"] = balance
        }
      
      UserDefaults.standard.set(inguser, forKey: "ingCurrentUserMiAJ")
      UserDefaults.standard.set(inguser, forKey: infoID)
  }
   
    private func ainsertbnh()  {
        gomiun.isUserInteractionEnabled = true
        gomiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        taingchangerinmaj.isUserInteractionEnabled = true
        taingchangerinmaj.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
    }
    
    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
        if tgmni.view == gomiun {
            self.dismiss(animated: true)
        }
        
       
        if tgmni.view == taingchangerinmaj {
            //拍照
            MiAJEisditImmtiom.aboMIAJ_CameraPermission { ifHasgranted in
                
                DispatchQueue.main.async {
                    if ifHasgranted {
                        
                        let picker = UIImagePickerController()
                               
                        picker.sourceType = .camera
                        picker.delegate = self
                        self.present(picker, animated: true)
                    }else{
                        let OkseeMIAJ0 =  self.restobuingd(Cubecm: "Nqob hcvacmdeqreaa bpmesrbmeiuscsfisoenm bcbulrdruetnmtqlcyp farvjahixloalbklmea!")
                        SVProgressHUD.showInfo(withStatus: OkseeMIAJ0)
                    }
                }
                
            }
            
            
            
            
        }
        
        
       
        
    }
    
  class  func aboMIAJ_CameraPermission(MIAJcompletion: @escaping (_ ifHasgranted: Bool) -> Void) {
           switch AVCaptureDevice.authorizationStatus(for: .video) {
           case .authorized:
               MIAJcompletion(true)
               
           case .notDetermined:
              
               AVCaptureDevice.requestAccess(for: .video) { ifHasgranted in
                   MIAJcompletion(ifHasgranted)
               }
               
           case .denied,.restricted:

               MIAJcompletion(false)
           
            default:
 
               MIAJcompletion(false)
           }
       }
   
}



