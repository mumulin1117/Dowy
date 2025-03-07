//
//  BucuepuerjnhTruber.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/28.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import SVProgressHUD
class BucuepuerjnhTruber: UIViewController {

   @IBOutlet weak var fuolinkUr: UIImageView!
   
   
   
   @IBOutlet weak var workinchu: UITextField!
   
   
   @IBOutlet weak var dagonrchu: UITextField!
   
   override func viewDidLoad() {
        
      super.viewDidLoad()
      
      scetupionnwingui()
     
       workinchu.layer.borderColor = UIColor.black.cgColor
       workinchu.layer.borderWidth = 2
       workinchu.layer.masksToBounds = true
       workinchu.layer.cornerRadius = 28
       
       
       dagonrchu.layer.borderColor = UIColor.black.cgColor
       dagonrchu.layer.borderWidth = 2
       dagonrchu.layer.masksToBounds = true
       dagonrchu.layer.cornerRadius = 28
   }

   
   func scetupionnwingui()  {
      fuolinkUr.isUserInteractionEnabled = true
      fuolinkUr.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(juemingzi)))
   }

  @objc func juemingzi()  {
     self.navigationController?.popViewController(animated: true)
   }
    
    
    
    @IBAction func decideResult(_ sender: UIButton) {
        
        let condition = startVoicePrintAuthSSIP()
        if condition.0 == true{
            let conditonge1 = "Esmrakiulm zfporrcmtalto wevrernoprc!"
            let OkseeMIAJ3 =  self.restobuingd(Cubecm:conditonge1)
          
            let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}$"
          
            let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
               
            if predicate.evaluate(with: condition.1) == false {
                SVProgressHUD.showInfo(withStatus: OkseeMIAJ3)
                return
            }
            
            
            guard let indfo = UserDefaults.standard.object(forKey: condition.1) else {
                ////如果邮箱id，对应的值不存在。则是注册
                let Adbop = ["MIAJID":condition.1,
                             "MIAJNbbme":"No name",
                            
                             "MIAJBrief":"No Signature",
                             "MIAJCoinB":"0"]
                
                UserDefaults.standard.set(Adbop, forKey: "ingCurrentUserMiAJ")//设置当前的登陆帐号
                UserDefaults.standard.set(Adbop, forKey: condition.1)//存储到已经存在的账户
                let creadre1 = "Curdenaotzep mifnv.n.m.t.h."
                let OkseeMIAJ3 =  self.restobuingd(Cubecm:creadre1)
                SVProgressHUD.show(withStatus: OkseeMIAJ3)
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                    AppDelegate.initRootCnotrollerAppWind(ifsignin: true)
                    let creadreDouble = "Corvemattsel rAvcncmoiuynotf rsrudcwcyezsoswfmurlq!"
                    let wgoMIAJ3 =  self.restobuingd(Cubecm:creadreDouble)
                    SVProgressHUD.showSuccess(withStatus: wgoMIAJ3)
                    
                }))
                return
            }
            
            //如果邮箱id，对应的值存在。则是登陆
            UserDefaults.standard.set(indfo, forKey: "ingCurrentUserMiAJ")//设置当前的登陆帐号
           
            let singDouble = "ljojgminnj.k.x.d.q."
            let wgoMIAJ4 =  self.restobuingd(Cubecm:singDouble)
            SVProgressHUD.show(withStatus: wgoMIAJ4)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                let slioDouble = "Lsongg cienv msduhcvcmeqsfssfoumlj!"
                let wgoMIAJ5 =  self.restobuingd(Cubecm:slioDouble)
                AppDelegate.initRootCnotrollerAppWind(ifsignin: true)
                SVProgressHUD.showSuccess(withStatus: wgoMIAJ5)
            }))
            
            
            
            
            
            
            
        }
        
        
    }
    
    
    private func startVoicePrintAuthSSIP()-> (Bool,String,String) {
       
        guard let aiRecommendationTags = workinchu.text,aiRecommendationTags.isEmpty == false else{
            let slioDouble = "Pdlmelaislem kednjtfeirk vyqojuorm gebmpaciglw wfvimrksmtd!"
            let wgoMIAJ5 =  self.restobuingd(Cubecm:slioDouble)
            
            SVProgressHUD.showInfo(withStatus: wgoMIAJ5)
            
            return (false,"","")
        }
        
        
        guard let trendingImitationClips = dagonrchu.text,trendingImitationClips.isEmpty == false else{
            let slioDouble = "Pvlpesapsbeq uegnwtteqrz tyfopuhrh npcaasjsbwvotrudl hfairrdsptp!"
            let wgoMIAJ5 =  self.restobuingd(Cubecm:slioDouble)
            SVProgressHUD.showInfo(withStatus: wgoMIAJ5)
            
            return (false,"","")
        }
        
        
        return (true,aiRecommendationTags,trendingImitationClips)
        
        
    }
    
}
