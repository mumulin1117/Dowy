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
            
            let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}$"
          
            let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
               
            if predicate.evaluate(with: condition.1) == false {
                SVProgressHUD.showInfo(withStatus: "Email format error！")
                return
            }
            
            
            guard let indfo = UserDefaults.standard.object(forKey: condition.1) else {
                ////如果邮箱id，对应的值不存在。则是注册
                let Adbop = ["MIAJID":condition.1,
                             "MIAJNbbme":"NULL",
                            
                             "MIAJBrief":"NULL",
                             "MIAJCoinB":"0"]
                
                UserDefaults.standard.set(Adbop, forKey: "ingCurrentUserMiAJ")//设置当前的登陆帐号
                UserDefaults.standard.set(Adbop, forKey: condition.1)//存储到已经存在的账户
                SVProgressHUD.show(withStatus: "Create in.....")
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                    AppDelegate.initRootCnotrollerAppWind(ifsignin: true)
                    
                    SVProgressHUD.showSuccess(withStatus: "Create Account successful!")
                    
                }))
                return
            }
            
            //如果邮箱id，对应的值存在。则是登陆
            UserDefaults.standard.set(indfo, forKey: "ingCurrentUserMiAJ")//设置当前的登陆帐号
            
            
            SVProgressHUD.show(withStatus: "login.....")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                
                AppDelegate.initRootCnotrollerAppWind(ifsignin: true)
                SVProgressHUD.showSuccess(withStatus: "Log in successful!")
            }))
            
            
            
            
            
            
            
        }
        
        
    }
    
    
    private func startVoicePrintAuthSSIP()-> (Bool,String,String) {
       
        guard let aiRecommendationTags = workinchu.text,aiRecommendationTags.isEmpty == false else{
            SVProgressHUD.showInfo(withStatus: "Please enter your email first!")
            
            return (false,"","")
        }
        
        
        guard let trendingImitationClips = dagonrchu.text,trendingImitationClips.isEmpty == false else{
            SVProgressHUD.showInfo(withStatus: "Please enter your password first!")
            
            return (false,"","")
        }
        
        
        return (true,aiRecommendationTags,trendingImitationClips)
        
        
    }
    
}
