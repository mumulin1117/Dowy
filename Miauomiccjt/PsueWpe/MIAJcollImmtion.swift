//
//  MIAJcollImmtion.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import SVProgressHUD

class MIAJcollImmtion: UIViewController {
    @IBOutlet weak var alipoMineIcon: UIImageView!
    
    @IBOutlet weak var aiopHIsiconf: UIImageView!
    @IBOutlet weak var aiopHIsenamf: UILabel!
    
    @IBOutlet weak var backgomiun: UIImageView!
    
    @IBOutlet weak var replopiun: UIImageView!
    
    
    
    @IBOutlet weak var gohngguad: UIImageView!
    
    
    
    @IBOutlet weak var functionuad: UIImageView!
    
    @IBOutlet weak var functionuad1: UIImageView!
    
    @IBOutlet weak var functionuad2: UIImageView!
    var uiBinh:Dictionary<String,String>
    init(uiBinh: Dictionary<String, String>) {
       
        self.uiBinh = uiBinh
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("reBuiMIAd")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        functionuad2.isUserInteractionEnabled = true
        functionuad2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        ainsertbnhUpdate()
        ainsertbnh()
        gohngguad.isUserInteractionEnabled = true
        gohngguad.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        setinguistutl()
    }
    
    func ainsertbnhUpdate()  {
       
        
        aiopHIsiconf.image = UIImage(named: uiBinh["MIAJphotl"]!)
        aiopHIsenamf.text = uiBinh["MIAJNbbme"]
       
        backgomiun.image = UIImage(named: uiBinh["MIAJphotl"]!)
        alipoMineIcon.image = MIAJWuoeImmtion.lognCacheing
   }
    
    func ainsertbnh()  {
        replopiun.isUserInteractionEnabled = true
        replopiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        functionuad.isUserInteractionEnabled = true
        functionuad.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        replopiun.isUserInteractionEnabled = true
        replopiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        let OkseeMIAJ0 =  self.restobuingd(Cubecm: "Ctosnpnjeacntxionags.o.c.s.l.")
        SVProgressHUD.show(withStatus: OkseeMIAJ0)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 8, execute: DispatchWorkItem(block: {
            
            let sdfer = "Tchjen suksmejrz yytoeuc sdhihawlxeedi miisy injovtb roqnnlhiknxeb.z rPjlreaavsnes dttrjyu zaagnanilnh tlkatteevra!"
            let OkseeMIAJ1 =  self.restobuingd(Cubecm:sdfer)
            SVProgressHUD.showInfo(withStatus: OkseeMIAJ1)
            self.updateselmaploviw()
        }))
        
        functionuad1.isUserInteractionEnabled = true
        functionuad1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
    }
    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
        
        if tgmni.view == replopiun {
            let userig = uiBinh["MIAJID"] ?? ""
            
            self.remoLaredeleterAlert(withujiUsed: userig)
        }
        
        
        if tgmni.view == gohngguad {//up hung
            self.navigationController?.popViewController(animated: true)
        }
        
        
        
        
        if tgmni.view == functionuad ||  tgmni.view == functionuad1 ||  tgmni.view == functionuad2  {
            let sdfer = "Wwakiuth cftokri wtphcel upahgofnpen otsok rbmeg vcooenwnleacotgendr labnbdq ytirjyk rajgdasiwn"
            let OkseeMIAJ1 =  self.restobuingd(Cubecm:sdfer)
            SVProgressHUD.showInfo(withStatus: OkseeMIAJ1)
        }
        
      
    }

    @IBOutlet weak var vvonerBgd: UIView!
    

    fileprivate func setinguistutl() {
        aiopHIsiconf.layer.cornerRadius = 20
        aiopHIsiconf.layer.masksToBounds = true
        
        vvonerBgd.layer.cornerRadius = 10
        vvonerBgd.layer.masksToBounds = true
        
        
        alipoMineIcon.layer.masksToBounds = true
        NotificationCenter.default.addObserver(self, selector: #selector(updateselmaploviw), name: NSNotification.Name.init("remobesomnerUser"), object: nil)
        
    }
    
    @objc func updateselmaploviw() {
        self.navigationController?.popViewController(animated: true)
    }

}
