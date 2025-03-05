//
//  MiAJAFetaiolCPImmpo.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import Player
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
        viderplayet?.view.removeFromSuperview()
        viderplayet?.removeFromParent()
    }
    @objc func MJAIfsender()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    //举报
    @objc func MJAIfReportin()  {
       
    }
    
    
    @IBOutlet weak var tousercentertPUnMIADi: UIImageView!
    
    //个人中心
    @objc func addtTapiserunincenter()  {
        
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
        
        replopiun.addTarget(self, action: #selector(MJAIfReportin), for: .touchUpInside)
        self.viderplayet?.playFromBeginning()
        
        if pageMIAITypeL == 1 {
            bottmmMJAI.snp.makeConstraints { make in
                make.left.trailing.equalToSuperview().inset(13)
                make.height.equalTo(0)
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom)
            }
        }
    }
    
    func enterToplayerAuto()  {
        self.viderplayet?.playerView.playerBackgroundColor = .clear
        self.addChild(self.viderplayet!)
        
        
        self.celcovervvMIAJ.insertSubview(self.viderplayet!.view, at: 0)
        viderplayet?.didMove(toParent: self)
        viderplayet?.fillMode = .resizeAspectFill
        
        guard let uripath = tdastaMiAJ["MIAJViocovbr"] ,
        let path = Bundle.main.path(forResource: uripath, ofType: "mp4")
        else {
            return
        }
        
        let urlPathname = URL(fileURLWithPath: path)
        
        
        self.viderplayet?.url = urlPathname
        
        self.viderplayet?.playbackLoops = true
        
    }

    @IBOutlet weak var pubuserAvtMIAJ: UIImageView!
    
    @IBOutlet weak var celcovervvMIAJ: UIImageView!
    
    
    @IBOutlet weak var usernnameNIAJ: UILabel!
    
    
    @IBOutlet weak var titkolppppMIAJ: UILabel!
    
    
    
    @IBOutlet weak var heabetCouny: UIImageView!
    
  

  
    @IBOutlet weak var enterGueeredue: UITextField!
    
    
    @IBAction func sureGuedeG(_ sender: UIButton) {
        
        
        
        
        
    }
    
    
    func Cunmifhj() {
        bottmmMJAI.layer.cornerRadius = 15
        bottmmMJAI.layer.masksToBounds = true
        pubuserAvtMIAJ.image = UIImage.init(named: tdastaMiAJ["MIAJphotl"] ?? "")
       
        celcovervvMIAJ.image = UIImage.init(named: tdastaMiAJ["MIAJViocovbr"] ?? "")
        
        titkolppppMIAJ.text = tdastaMiAJ["MIAJvioeoTexvct"]
        
        usernnameNIAJ.text = "@" + (tdastaMiAJ["MIAJNbbme"] ?? "")
        heabetCouny.image = UIImage(named: "nothathuiop")
    }
    
    
}
