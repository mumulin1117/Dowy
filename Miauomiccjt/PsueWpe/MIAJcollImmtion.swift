//
//  MIAJcollImmtion.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        functionuad2.isUserInteractionEnabled = true
        functionuad2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        ainsertbnh()
        gohngguad.isUserInteractionEnabled = true
        gohngguad.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        setinguistutl()
    }
    
    
    
    func ainsertbnh()  {
        replopiun.isUserInteractionEnabled = true
        replopiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        functionuad.isUserInteractionEnabled = true
        functionuad.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        replopiun.isUserInteractionEnabled = true
        replopiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        
        functionuad1.isUserInteractionEnabled = true
        functionuad1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
    }
    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
        
        if tgmni.view == replopiun {
            
        }
        
        
        if tgmni.view == gohngguad {//up hung
            self.navigationController?.popViewController(animated: true)
        }
        
        
        
        
        if tgmni.view == functionuad ||  tgmni.view == functionuad1 ||  tgmni.view == functionuad2  {
            
        }
        
      
    }



    fileprivate func setinguistutl() {
        aiopHIsiconf.layer.cornerRadius = 20
        aiopHIsiconf.layer.masksToBounds = true
        
        alipoMineIcon.layer.cornerRadius = 20
        alipoMineIcon.layer.masksToBounds = true
    }

}
