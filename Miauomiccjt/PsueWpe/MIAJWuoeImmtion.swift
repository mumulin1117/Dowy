//
//  MIAJWuoeImmtion.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/2/26.
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
    
    
    
    @IBAction func charnumge(_ sender: UIButton) {
        
        
        
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
        
       
        
        
       
      
        
        
       
        
    }
    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
       
       
        
        if tgmni.view == toesitering {
            
        }
        
       
        
        
  
        
    }



    fileprivate func setinguistutl() {
        pinkernig.layer.cornerRadius = 20
        pinkernig.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMinYCorner]
        
        bottmiWjhite.layer.cornerRadius = 20
        bottmiWjhite.layer.masksToBounds = true
    }

}
