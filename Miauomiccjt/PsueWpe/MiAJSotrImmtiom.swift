//
//  MiAJSotrImmtiom.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import SVProgressHUD
class MiAJSotrImmtiom: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celop = tableView.dequeueReusableCell(withIdentifier: "UITableViewCellUIOid", for: indexPath)
        celop.selectionStyle  = .none
        celop.accessoryType = .disclosureIndicator
        celop.backgroundColor = .white
        celop.textLabel?.textColor = .black
        let OkseeMIAJ0 =  self.restobuingd(Cubecm: "Umsvefrn zAhgurnexeumoekndt!")
        let OkseeMIAJ1 =  self.restobuingd(Cubecm: "Pdihvbapccye dskerrcvoiecoe")
        let OkseeMIAJ2 =  self.restobuingd(Cubecm: "Ccoknqthanccta uuns")
        let OkseeMIAJ3 =  self.restobuingd(Cubecm: "Alpbpi fvreqrastijoln")
        let OkseeMIAJ4 =  self.restobuingd(Cubecm: "Czloetaarx dcmazcahqe")
        celop.textLabel?.text =  [OkseeMIAJ0,OkseeMIAJ1,OkseeMIAJ2,OkseeMIAJ3,OkseeMIAJ4][indexPath.row]
        return celop
    }
    

    @IBOutlet weak var ebditChilk: UIButton!
    
    
    @IBOutlet weak var gomiun: UIImageView!
    
    @IBOutlet weak var alipoMineIcon: UIImageView!
    
    
    @IBOutlet weak var aiopMInenamf: UILabel!
    
    @IBOutlet weak var talbemanber: UITableView!
    
    
    
    @IBOutlet weak var louiegnout: UIImageView!
    
    @IBOutlet weak var deloiegnout: UIImageView!
    
    @IBOutlet weak var wutoWwhiei: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upnewIujiem()
        ainsertbnh()
        cmnumunkbkb()
        ebditChilk.addTarget(self, action: #selector(edoupUiseinfo), for: .touchUpInside)
        
    }


    private func upnewIujiem()  {
        alipoMineIcon.layer.cornerRadius = 40
        alipoMineIcon.layer.masksToBounds = true
        
        wutoWwhiei.layer.cornerRadius = 16
        wutoWwhiei.layer.masksToBounds = true
        
        wutoWwhiei.layer.borderColor = UIColor(red: 0.42, green: 0, blue: 0.73, alpha: 1).cgColor
        wutoWwhiei.layer.borderWidth = 1.6
        
       
        talbemanber.layer.cornerRadius = 16
        talbemanber.layer.masksToBounds = true
        
        talbemanber.layer.borderColor = UIColor(red: 0.42, green: 0, blue: 0.73, alpha: 1).cgColor
        talbemanber.layer.borderWidth = 1.6
        
    }
    private func cmnumunkbkb()  {
        
        talbemanber.dataSource = self
       
        talbemanber.delegate = self
        talbemanber.separatorStyle = .none
        talbemanber.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCellUIOid")
        talbemanber.rowHeight = 150
        talbemanber.rowHeight = UITableView.automaticDimension
        
       
    }
    func ainsertbnh()  {
        gomiun.isUserInteractionEnabled = true
        gomiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        louiegnout.isUserInteractionEnabled = true
        louiegnout.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        deloiegnout.isUserInteractionEnabled = true
        deloiegnout.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        
      
        
    }
    
    
    var currMIAJentusedInfo:Dictionary<String,String>{
        return UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String> ?? [:]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        gibenerUsericonh()
    }
    func gibenerUsericonh()  {
       
        alipoMineIcon.image = MIAJWuoeImmtion.lognCacheing
        aiopMInenamf.text = currMIAJentusedInfo["MIAJNbbme"]
       
      
       
   }
    
    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
        if tgmni.view == gomiun {
            self.navigationController?.popViewController(animated: true)
        }
        
        
        if tgmni.view == louiegnout {
            UserDefaults.standard.set(nil, forKey: "ingCurrentUserMiAJ")
            AppDelegate.initRootCnotrollerAppWind(ifsignin: false)
            MIAJWuoeImmtion.lognCacheing = UIImage(named: "MJAIuxiang")!
            
            
            MIAJWuoeImmtion.lognFacing.removeAll()
            MIAJWuoeImmtion.lognfolloweing.removeAll()
        }
        
        if tgmni.view == deloiegnout {
           let delelTile = self.restobuingd(Cubecm: "Dwellxeitdeg kAicncjoxuvnvtv sPceergmeaynbesnftkloy")
            let alert = UIAlertController(
                    title: delelTile,
                    message: "This will immediately: \n• Erase all profile data \n• Remove active subscriptions \n• Delete chat history",
                    preferredStyle: .alert
                )
            
            let candelelTile = self.restobuingd(Cubecm: "Cuasntcpeol")
            
            
            let cancelAction = UIAlertAction(
                   title: candelelTile,
                   style: .cancel,
                   handler: nil
               )
            
            let confirmlTile = self.restobuingd(Cubecm: "Cbowngfairrgmu sDseplbectrizojn")
            let deleteAction = UIAlertAction(
                    title: confirmlTile,
                    style: .destructive) { _ in
                        
                        UserDefaults.standard.set(nil, forKey: "ingCurrentUserMiAJ")
                        AppDelegate.initRootCnotrollerAppWind(ifsignin: false)
                        MIAJWuoeImmtion.lognCacheing = UIImage(named: "MJAIuxiang")!
                        
                        
                        MIAJWuoeImmtion.lognFacing.removeAll()
                        MIAJWuoeImmtion.lognfolloweing.removeAll()
                        
                    }
            alert.addAction(cancelAction)
                
            alert.addAction(deleteAction)
            alert.setValue(NSAttributedString(
                string: delelTile,
                attributes: [.foregroundColor: UIColor.systemOrange]
            ), forKey: "attributedTitle")
            // 4. 显示弹窗
            present(alert, animated: true)
            
           
        }
        
       
        
        
       
        
    }
    
   @objc func edoupUiseinfo()  {
       let edtinhINgoVc = MiAJEisditImmtiom.init()
       edtinhINgoVc.bloakMIAJ = {noi in
           
           self.gibenerUsericonh()
       }
       edtinhINgoVc.modalPresentationStyle = .overCurrentContext
       self.present(edtinhINgoVc, animated: true)
       
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let eluaijg = BucueEluaiTruber.init()
             eluaijg.shoingindicatoer.text = BucueCarstarTruber.showirResturnContenu(which: 1)
            eluaijg.modalPresentationStyle = .overCurrentContext
            self.present(eluaijg, animated: true)
        case 1:
            let eluaijg = BucueEluaiTruber.init()
             eluaijg.shoingindicatoer.text = BucueCarstarTruber.showirResturnContenu(which: 2)
            eluaijg.modalPresentationStyle = .overCurrentContext
            self.present(eluaijg, animated: true)
        case 2:
            
            let confirmlTile = self.restobuingd(Cubecm: "hftetqpesk:j/t/kaxpjpp.xrtnhmvyrkrmwnx.xliicntk")
            if let urlConnect = URL(string: confirmlTile)  {
                UIApplication.shared.open(urlConnect, options: [:], completionHandler: nil)
            }
        case 3:
           let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0.0"
            SVProgressHUD.showInfo(withStatus: "App version is \(version)")
            
        case 4:
            
            let confirmlTile = self.restobuingd(Cubecm: "Cdlyeyakrqimnvgd.m.z.")
            SVProgressHUD.show(withStatus: confirmlTile)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: DispatchWorkItem(block: {
                let wanch = self.restobuingd(Cubecm: "Czlhecatnqionugk gctocmbpulreltbeldn!")
                SVProgressHUD.showSuccess(withStatus: wanch)
            }))
            
        default:
            break
        }
    }
}
