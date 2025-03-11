//
//  MiAJAFetaiolCPImmpo.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import Player
import SVProgressHUD
class MiAJAFetaiolCPImmpo: UIViewController {
    var viderplayet: Player?
    
    @IBOutlet weak var gomiun: UIButton!
    
    @IBOutlet weak var replopiun: UIButton!

    
    @IBOutlet weak var bottmmMJAI: UIView!
    var tdastaMiAJ:Dictionary<String,String>
    var pageMIAITypeL:Int
    
    init(_tdastaMiAJ: Dictionary<String,String>,_pageMIAITypeL:Int) {
        self.tdastaMiAJ = _tdastaMiAJ
        self.pageMIAITypeL = _pageMIAITypeL
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    deinit {
        viderplayet?.willMove(toParent: nil)
        var ggolr:Bool = false
        
        var orighanme:String = self.title ?? ""
        
        var empwd = ""
        
        
        viderplayet?.view.removeFromSuperview()
        var trbsla = true
        if orighanme.count == 0 {
            ggolr = false
        }
        if ggolr == false {
            viderplayet?.removeFromParent()
        }
        
    }
    @objc func MJAIfsender()  {
        self.navigationController?.popViewController(animated: true)
    }
    

    
    
    @IBOutlet weak var tousercentertPUnMIADi: UIImageView!
    
    //个人中心
    @objc func addtTapiserunincenter()  {
        self.navigationController?.pushViewController(MIAJMeiwnuImmtion.init(uiBinh: tdastaMiAJ), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pubuserAvtMIAJ.layer.cornerRadius = 33
        pubuserAvtMIAJ.layer.masksToBounds = true
        tousercentertPUnMIADi.isUserInteractionEnabled = true
        tousercentertPUnMIADi.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addtTapiserunincenter)))
        
        
        viderplayet = Player()
        Cunmifhj()
        enterToplayerAuto()
        gomiun.addTarget(self, action: #selector(MJAIfsender), for: .touchUpInside)
        
        replopiun.addTarget(self, action: #selector(juiaGopdgerAlert), for: .touchUpInside)
        self.viderplayet?.playFromBeginning()
        
        if pageMIAITypeL == 1 {
            bottmmMJAI.snp.makeConstraints { make in
                make.left.trailing.equalToSuperview().inset(13)
                make.height.equalTo(0)
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom)
            }
        }
    }
    
    
    @IBOutlet weak var centerPlainmghrStatus: UIImageView!
    
    @objc func juiaGopdgerAlert() {
        self.videoTilretty(withujiUsed: tdastaMiAJ["MIAJID"] ?? "")
         
     }
    
    @objc func tapVideoStatusChange()  {
    
        var ggolr:Bool = false
        
        var orighanme:String = self.title ?? ""
        
        var empwd = ""
        
       
        switch self.viderplayet?.playbackState {
        case .stopped:
            var trbsla = true
            if orighanme.count == 0 {
                ggolr = false
            }
            if ggolr == false {
                viderplayet?.playFromBeginning()
                centerPlainmghrStatus.isHidden = true
            }
           
        case .paused:
            var trbsla = true
            if orighanme.count == 0 {
                ggolr = false
            }
            if ggolr == false {
                viderplayet?.playFromCurrentTime()
                centerPlainmghrStatus.isHidden = true
            }
           
            
        case .playing:
            var trbsla = true
            if orighanme.count == 0 {
                ggolr = false
            }
            if ggolr == false {
                viderplayet?.pause()
                centerPlainmghrStatus.isHidden = false
            }
            
        case .failed:
            viderplayet?.pause()
            centerPlainmghrStatus.isHidden = false
            
        case .none:
            break
        }
    }
    func enterToplayerAuto()  {
        self.viderplayet?.playerView.playerBackgroundColor = .clear
        self.addChild(self.viderplayet!)
        
        self.celcovervvMIAJ.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapVideoStatusChange)))
        
        self.celcovervvMIAJ.insertSubview(self.viderplayet!.view, at: 0)
        viderplayet?.didMove(toParent: self)
        viderplayet?.fillMode = .resizeAspectFill
        
        let formatermiaj = self.restobuingd(Cubecm: "mcpf4")
        
        guard let uripath = tdastaMiAJ["MIAJViocovbr"] ,
        let path = Bundle.main.path(forResource: uripath, ofType: formatermiaj)
        else {
            return
        }
        
        let urlPathname = URL(fileURLWithPath: path)
        
        
        self.viderplayet?.url = urlPathname
        
        self.viderplayet?.playbackLoops = true
        NotificationCenter.default.addObserver(self, selector: #selector(MJAIfsender), name: NSNotification.Name.init("remobesomnerUser"), object: nil)
    }

    @IBOutlet weak var pubuserAvtMIAJ: UIImageView!
    
    @IBOutlet weak var celcovervvMIAJ: UIImageView!
    
    
    @IBOutlet weak var usernnameNIAJ: UILabel!
    
    
    @IBOutlet weak var titkolppppMIAJ: UILabel!
    
    
    
    @IBOutlet weak var heabetCouny: UIImageView!
    
  
    private var runerrvc:UIViewController?
    
  
    @IBOutlet weak var enterGueeredue: UITextField!
    
    
    @IBAction func sureGuedeG(_ sender: UIButton) {
        
        guard let resultGued =  enterGueeredue.text,resultGued.count > 0 else {
          let OkseeMIAJ =  self.restobuingd(Cubecm: "Pmluejamsaef wewnntsevrh iyposumrz fgcuwefslsv prceqszuhlxtg!")
            SVProgressHUD.showInfo(withStatus: OkseeMIAJ)
            return
        }
        let resultingshouvc = UIViewController.init()
        resultingshouvc.view.backgroundColor = UIColor.init(white: 0.3, alpha: 0.5)
        let errorimg = UIImageView.init(image: UIImage.init(named: "erroslertinh"))
        resultingshouvc.view.addSubview(errorimg)
        errorimg.isUserInteractionEnabled = true
        errorimg.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(260)
            make.height.equalTo(340)
        }
        resultingshouvc.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismisnigRun)))
        resultingshouvc.modalPresentationStyle = .overCurrentContext
        runerrvc = resultingshouvc
        
        self.present(resultingshouvc, animated: true)
    }
   @objc func dismisnigRun()  {
        runerrvc?.dismiss(animated: true)
       runerrvc = nil
       enterGueeredue.text = nil
       
    }
    
    func Cunmifhj() {
        bottmmMJAI.layer.cornerRadius = 15
        bottmmMJAI.layer.masksToBounds = true
        pubuserAvtMIAJ.image = UIImage.init(named: tdastaMiAJ["MIAJphotl"] ?? "")
       
        celcovervvMIAJ.image = UIImage.init(named: tdastaMiAJ["MIAJViocovbr"] ?? "")
        
        titkolppppMIAJ.text = tdastaMiAJ["MIAJvioeoTexvct"]
        
        usernnameNIAJ.text = "@" + (tdastaMiAJ["MIAJNbbme"] ?? "")
       
        
        if tdastaMiAJ["likeingThis"] == "1" {
            self.heabetCouny.image = UIImage(named: "thathuiop")
        }else{
            self.heabetCouny.image = UIImage(named: "nothathuiop")
        }
        heabetCouny.isUserInteractionEnabled = true
        heabetCouny.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapingkToAvchole)))
    }
    
    
   @objc func tapingkToAvchole()  {
       
       SVProgressHUD.show()
       self.view.isUserInteractionEnabled = false
       DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.7, execute: DispatchWorkItem(block: {
           SVProgressHUD.dismiss()
           self.view.isUserInteractionEnabled = true
           self.tdastaMiAJ["likeingThis"] = (  (self.tdastaMiAJ["likeingThis"] == "1") ? "0" : "1")
           
           if self.tdastaMiAJ["likeingThis"] == "1" {
               self.heabetCouny.image = UIImage(named: "thathuiop")
           }else{
               self.heabetCouny.image = UIImage(named: "nothathuiop")
           }
           
           
           for (oiu,shgy) in MIAJPerdforemImmtion.momomicMIAJ.enumerated() {
               if shgy["MIAJID"] == self.tdastaMiAJ["MIAJID"] {
                   MIAJPerdforemImmtion.momomicMIAJ[oiu] = self.tdastaMiAJ
               }
           }
       }))
      
       
   
   }
    
}
