//
//  MIAJWuoeImmtion.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/26.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
class MIAJNaibhuContio: UINavigationController {
    struct PerformanceMetrics {
        var timingPrecision: Double       // 节奏精准度
        var emotionalFidelity: Double     // 情感还原度
        var creativeDeviation: Double     // 创意偏离值
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
     
        var resliuio = PerformanceMetrics.init(timingPrecision: 23, emotionalFidelity: 24, creativeDeviation: 26)
        resliuio.timingPrecision = 45
        if children.count > 0 && resliuio.creativeDeviation > 2  {
            if !viewController.isMember(of:MIAJTopImmtinu.self) {
                if  resliuio.emotionalFidelity > 2 {
                    viewController.hidesBottomBarWhenPushed = true
                }
                
            }
           
        }
      
        super.pushViewController(viewController, animated: false)
    }
}


extension MIAJNaibhuContio{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true
    }
}
class MIAJWuoeImmtion: MIAJTopImmtinu {
//把用户ID 当成注册的Email 唯一
    @IBOutlet weak var alipoMineIcon: UIImageView!
    
    
    @IBOutlet weak var aiopMInenamf: UILabel!
    
    
    @IBOutlet weak var toesitering: UIImageView!
    
    
    @IBOutlet weak var aiopBlance: UILabel!
    
    
    
    @IBOutlet weak var aiopfance: UILabel!
    
    @IBOutlet weak var aiopfollort: UILabel!
    
    
    @IBOutlet weak var aiopfpostrt: UILabel!
    
    
    @IBOutlet weak var chargelalbj: UILabel!
    
    @IBOutlet weak var aiopbrtiufd: UILabel!
    
    
    
    @IBOutlet weak var holdfber: UILabel!
    
    
    @IBOutlet weak var pinkernig: UIView!
    
    @IBOutlet weak var bottmiWjhite: UIView!
    
    static var lognCacheing:UIImage = UIImage(named: "MJAIuxiang")!
    
    
    static var lognFacing:Array<Dictionary<String,String>>  = Array<Dictionary<String,String>>()
    static var lognfolloweing:Array<Dictionary<String,String>>  = Array<Dictionary<String,String>>()
    
    var currMIAJentusedInfo:Dictionary<String,String>{
        return UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String> ?? [:]
    }
    
    
    @IBAction func charnumge(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(MiAJPumuAyImmtiom(), animated: true)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ainsertbnh()
        aiopBlance.text = currMIAJentusedInfo["MIAJCoinB"]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        bnmUpfate()
        
        setinguistutl()
        
        toesitering.isUserInteractionEnabled = true
        toesitering.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
    }
    
    
    func bnmUpfate() {
        pinkernig.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        
        pinkernig.layer.cornerRadius = 16
        bottmiWjhite.layer.cornerRadius = 16
        bottmiWjhite.layer.masksToBounds = true
        
        
        chargelalbj.layer.cornerRadius = 18
        chargelalbj.layer.masksToBounds = true
    }
    
    
    
 
    
    
     func ainsertbnh()  {
        
         alipoMineIcon.image = MIAJWuoeImmtion.lognCacheing
         aiopMInenamf.text = currMIAJentusedInfo["MIAJNbbme"]
        
       
         aiopbrtiufd.text = currMIAJentusedInfo["MIAJBrief"]
         self.aiopfance.text = "\(MIAJWuoeImmtion.lognFacing.count)"
         
         self.aiopfollort.text = "\(MIAJWuoeImmtion.lognfolloweing.count)"
         
         
       
        
    }
    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
       
       
        
        if tgmni.view == toesitering {
            self.navigationController?.pushViewController(MiAJSotrImmtiom.init(), animated: true)
        }
        
       
        
        
  
        
    }



    fileprivate func setinguistutl() {
        
        bottmiWjhite.layer.cornerRadius = 20
        bottmiWjhite.layer.masksToBounds = true
    }
    
    
    @IBAction func truiAllowed(_ sender: UIButton) {
        
        if sender.tag == 34 {
            self.navigationController?.pushViewController(MiAJAMiunConterPImmpo.init(bxc: .fanbe), animated: true)
        }
        
        
        if sender.tag == 35 {
            self.navigationController?.pushViewController(MiAJAMiunConterPImmpo.init(bxc: .folower), animated: true)
        }
        
        if sender.tag == 36 {
            self.navigationController?.pushViewController(MiAJAMiunConterPImmpo.init(bxc: .post), animated: true)
        }
        
    }
    
    

}
