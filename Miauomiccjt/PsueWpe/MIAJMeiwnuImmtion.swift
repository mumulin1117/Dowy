//
//  MIAJMeiwnuImmtion.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class MIAJMeiwnuImmtion: UIViewController {
    
    var uiBinh:Dictionary<String,String>
    init(uiBinh: Dictionary<String, String>) {
       
        self.uiBinh = uiBinh
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var gomiun: UIImageView!
    
    @IBOutlet weak var replopiun: UIImageView!
    
    
    //把用户ID 当成注册的Email 唯一
    @IBOutlet weak var alipoMineIcon: UIImageView!
    
    
    @IBOutlet weak var aiopMInenamf: UILabel!
    
    
    @IBOutlet weak var toeFollowering: UIImageView!
    
    
    
    
    
    @IBOutlet weak var aiopfance: UILabel!
    
    @IBOutlet weak var aiopfollort: UILabel!
    
    
    @IBOutlet weak var aiopfpostrt: UILabel!
    
    
    
    @IBOutlet weak var aiopbrtiufd: UILabel!
    
    
    
    @IBOutlet weak var holdfber: UILabel!
    
    
    @IBOutlet weak var pinkernig: UIView!
    
    @IBOutlet weak var bottmiWjhite: UIView!
    
    
    @IBOutlet weak var conttntPOst: UIImageView!
    
    
    
    @IBOutlet weak var meassGreen: UIImageView!
    
    @IBOutlet weak var videoggGreen: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        conttntPOst.isUserInteractionEnabled = true
        conttntPOst.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        ainsertbnh()
        bnmUpfate()
        
        setinguistutl()
        
        toeFollowering.isUserInteractionEnabled = true
        toeFollowering.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        ainsertbnhUpdate()
    }
    
    
    func bnmUpfate() {
        pinkernig.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        
        pinkernig.layer.cornerRadius = 16
        bottmiWjhite.layer.cornerRadius = 16
        bottmiWjhite.layer.masksToBounds = true
        
        
    }
    
    
    
 
    
    
    func ainsertbnh()  {
        
        gomiun.isUserInteractionEnabled = true
        gomiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        replopiun.isUserInteractionEnabled = true
        replopiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        meassGreen.isUserInteractionEnabled = true
        meassGreen.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        replopiun.isUserInteractionEnabled = true
        replopiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        
        videoggGreen.isUserInteractionEnabled = true
        videoggGreen.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
    }
    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
        if tgmni.view == gomiun {
            self.navigationController?.popViewController(animated: true)
        }
        
        
        if tgmni.view == replopiun {
            
        }
        
        if tgmni.view == toeFollowering {
            
        }
        
       
        
        
        
        if tgmni.view == videoggGreen  {
            
        }
        
      
        
        if tgmni.view == meassGreen  {
            
        }
        
        if tgmni.view == conttntPOst  {
            
        }
        
    }



    fileprivate func setinguistutl() {
        pinkernig.layer.cornerRadius = 20
        pinkernig.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMinYCorner]
        
        bottmiWjhite.layer.cornerRadius = 20
        bottmiWjhite.layer.masksToBounds = true
    }

    
    func ainsertbnhUpdate()  {
        if  MIAJWuoeImmtion.lognfolloweing.contains(uiBinh){
            self.toeFollowering.image = UIImage(named: "bunmio")
        }else{
            self.toeFollowering.image = UIImage(named: "bunmiosun")
        }
        
        alipoMineIcon.image = UIImage(named: uiBinh["MIAJphotl"]!)
        aiopMInenamf.text = uiBinh["MIAJNbbme"]
       
      
        aiopbrtiufd.text = uiBinh["MIAJBrief"]
        self.aiopfance.text = "\(Int.random(in: 0...4))"
        
        self.aiopfollort.text = "\(Int.random(in: 0...5))"
        
        
      
       
   }
}
