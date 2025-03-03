//
//  MIAJPerdforemImmtion.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/2/26.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import MJRefresh
class MIAJPerdforemImmtion: MIAJTopImmtinu,UITableViewDelegate,UITableViewDataSource {
   
    var cbinMIAJ = Array<Dictionary<String,String>>()
    
    
    static var momomicMIAJ = Array<Dictionary<String,String>>()
   
    private  func loooodinhhhhMIAJ()  {
        
        guard let patPlisth = Bundle.main.path(forResource: "MOibduijpkdf", ofType: "plist"),
        let relaop = FileManager.default.contents(atPath: patPlisth) else {
            return
        }
        if let dictArray = try? PropertyListSerialization.propertyList(from: relaop, options: [], format: nil) as? [[String: String]]  {
            MIAJPerdforemImmtion.momomicMIAJ = dictArray
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cbinMIAJ.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bapi = tableView.dequeueReusableCell(withIdentifier: "MIAJOudiyouCellID", for: indexPath) as! MIAJOudiyouCell
        bapi.selectionStyle = .none
        
        let sckio = self.cbinMIAJ[indexPath.row]
        bapi.pubuserAvtMIAJ.image = UIImage.init(named: sckio["MIAJphotl"] ?? "")
        bapi.backgroundColor = .clear
        bapi.celcovervvMIAJ.image = UIImage.init(named: sckio["MIAJViocovbr"] ?? "")
        
        bapi.titkolppppMIAJ.text = sckio["MIAJvioeoTexvct"]
        
        bapi.usernnameNIAJ.text = sckio["MIAJNbbme"]
        bapi.heabetCouny.text = "❤️ " + (sckio["MIAJLikeCaunt"] ?? "0")
        return bapi
    }
    

    @IBOutlet weak var maploviw: UITableView!
    
    
    @IBOutlet weak var heartBeat: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loooodinhhhhMIAJ()
        maploviw.isScrollEnabled = true
        maploviw.rowHeight = 354 + 15
        maploviw.backgroundColor = .clear
        maploviw.contentInsetAdjustmentBehavior = .never
        maploviw.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 150, right: 0)
        maploviw.mj_header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(updateselmaploviw))
        maploviw.register(UINib(nibName: "MIAJOudiyouCell", bundle: nil), forCellReuseIdentifier: "MIAJOudiyouCellID")
        conginwerCop()
        maploviw.separatorStyle = .none
       
       
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        MIAJPerdforemImmtion.startHeartbeatAnimation(WiujhiView: heartBeat)
    }
    private func conginwerCop()  {
        maploviw.dataSource = self
        maploviw.delegate = self
        maploviw.showsVerticalScrollIndicator = false
        maploviw.mj_header?.beginRefreshing()
       
    }
    
    
    @objc func updateselmaploviw()  {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            self.cbinMIAJ = MIAJPerdforemImmtion.momomicMIAJ.filter { IAJ in
                return IAJ["isIAJnormal"] == "truuuer"
            }
            self.maploviw.reloadData()
            self.maploviw.mj_header?.endRefreshing()
        }))
    }
    
    
    //ai
    @IBAction func poterSder(_ sender: UIButton) {
        
        
    }
    
    
    //chat
    @IBAction func poteMeassge(_ sender: UIButton) {
        
    }

    //guess
    @IBAction func toponginmatinvj(_ sender: UIButton) {
        self.navigationController?.pushViewController(MIAJTakediImmtion.init(), animated: true)
        
    }
    
    private struct AnimationConfig {
            
        static let beatDuration: CFTimeInterval = 3 // 完整心跳周期
        static let keyframeTimes: [NSNumber] = [0.0, 0.1, 0.3, 0.5, 0.7, 1.0]
        static let scaleValues: [CGFloat] = [1.0, 1.2, 0.9, 1.15, 0.95, 1.0]
        static let opacityValues: [Float] = [1.0, 0.8, 1.0, 0.9, 1.0, 1.0]
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.navigationController?.pushViewController( MiAJAFetaiolCPImmpo.init(_tdastaMiAJ: cbinMIAJ[indexPath.row]), animated: true)
       
    }
    class func startHeartbeatAnimation(WiujhiView:UIView) {
            
        let animationGroup = CAAnimationGroup()
        
        // 缩放动画
        let scaleAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        scaleAnimation.values = AnimationConfig.scaleValues
        scaleAnimation.keyTimes = AnimationConfig.keyframeTimes
        scaleAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        
        // 透明度动画（模拟血压效果）
        let opacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
        opacityAnimation.values = AnimationConfig.opacityValues
        opacityAnimation.keyTimes = AnimationConfig.keyframeTimes
        
        // 组合动画
        animationGroup.animations = [scaleAnimation, opacityAnimation]
        animationGroup.duration = AnimationConfig.beatDuration
        animationGroup.repeatCount = .infinity // 无限循环
        
        WiujhiView.layer.add(animationGroup, forKey: "heartbeat")
      
    }
}
