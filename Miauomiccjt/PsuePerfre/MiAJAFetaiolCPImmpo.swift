//
//  MiAJAFetaiolCPImmpo.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import Player
class MiAJAFetaiolCPImmpo: UIViewController {
    var viderplayet: Player?
    
    @IBOutlet weak var gomiun: UIButton!
    
    @IBOutlet weak var replopiun: UIButton!

    
    var tdastaMiAJ:Dictionary<String,String>
    init(_tdastaMiAJ: Dictionary<String,String>) {
        self.tdastaMiAJ = _tdastaMiAJ
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viderplayet = Player()
        Cunmifhj()
        enterToplayerAuto()
        
        self.viderplayet?.playFromBeginning()
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
        pubuserAvtMIAJ.image = UIImage.init(named: tdastaMiAJ["MIAJphotl"] ?? "")
       
        celcovervvMIAJ.image = UIImage.init(named: tdastaMiAJ["MIAJViocovbr"] ?? "")
        
        titkolppppMIAJ.text = tdastaMiAJ["MIAJvioeoTexvct"]
        
       usernnameNIAJ.text = tdastaMiAJ["MIAJNbbme"]
        heabetCouny.image = UIImage(named: "nothathuiop")
    }
    
    
}
