//
//  MIAJWuoeImmtion.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/26.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

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
    
    var currentusedInfo:Dictionary<String,String>{
        return UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String> ?? [:]
    }
    
    
    @IBAction func charnumge(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(MiAJPumuAyImmtiom(), animated: true)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        ainsertbnh()
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
         aiopMInenamf.text = currentusedInfo["MIAJNbbme"]
        
       
         aiopbrtiufd.text = currentusedInfo["MIAJBrief"]
         self.aiopfance.text = "\(MIAJWuoeImmtion.lognFacing.count)"
         
         self.aiopfollort.text = "\(MIAJWuoeImmtion.lognfolloweing.count)"
         
         
       
        
    }
    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
       
       
        
        if tgmni.view == toesitering {
            self.navigationController?.pushViewController(MiAJSotrImmtiom.init(), animated: true)
        }
        
       
        
        
  
        
    }



    fileprivate func setinguistutl() {
        pinkernig.layer.cornerRadius = 20
        pinkernig.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMinYCorner]
        
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
