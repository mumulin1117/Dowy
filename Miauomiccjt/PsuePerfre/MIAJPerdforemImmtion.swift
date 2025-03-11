//
//  MIAJPerdforemImmtion.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/26.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import MJRefresh
import SVProgressHUD

class MIAJTopImmtinu: UIViewController {
    
}
class MIAJPerdforemImmtion: MIAJTopImmtinu,UITableViewDelegate,UITableViewDataSource {
   
    var cbinMIAJ = Array<Dictionary<String,String>>()
    
    
    static var momomicMIAJ = Array<Dictionary<String,String>>()
   
   
    
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
        bapi.pubuserAvtMIAJ.tag = indexPath.row
        bapi.pubuserAvtMIAJ.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addtTapiserunincenter(vatui: ))))
        bapi.titkolppppMIAJ.text = sckio["MIAJvioeoTexvct"]
        bapi.refpiutry.tag = indexPath.row
        bapi.refpiutry.addTarget(self, action: #selector(juiaGopdgerAlert(Buibn:)), for: .touchUpInside)
        bapi.usernnameNIAJ.text = sckio["MIAJNbbme"]
        bapi.heabetCouny.text = "❤️ " + (sckio["MIAJLikeCaunt"] ?? "0")
        return bapi
    }
    
    
    @objc func juiaGopdgerAlert(Buibn:UIButton) {
        let UhifData = cbinMIAJ[Buibn.tag]
        
       self.videoTilretty(withujiUsed: UhifData["MIAJID"] ?? "")
        
    }
    @objc func addtTapiserunincenter(vatui:UITapGestureRecognizer)  {
        let infokocvd = cbinMIAJ[vatui.view?.tag ?? 0]
        
        self.navigationController?.pushViewController(MIAJMeiwnuImmtion.init(uiBinh: infokocvd), animated: true)
    }

    @IBOutlet weak var maploviw: UITableView!
    
    
    @IBOutlet weak var heartBeat: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        NotificationCenter.default.addObserver(self, selector: #selector(updateselmaploviw), name: NSNotification.Name.init("remobesomnerUser"), object: nil)
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
        self.navigationController?.pushViewController(MiAJACIAyImmtiom.init(), animated: true)
        
    }
    
    
    //chat
    @IBAction func poteMeassge(_ sender: UIButton) {
        self.navigationController?.pushViewController(MiAJAMessagrerPImmpo.init(), animated: true)
    }

    //guess
    @IBAction func toponginmatinvj(_ sender: UIButton) {
        self.navigationController?.pushViewController(MIAJTakediImmtion.init(), animated: true)
        
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.navigationController?.pushViewController( MiAJAFetaiolCPImmpo.init(_tdastaMiAJ: cbinMIAJ[indexPath.row], _pageMIAITypeL:(indexPath.row == 1) ?  1 : 0), animated: true)
       
    }
    class func startHeartbeatAnimation(WiujhiView:UIView) {
            
        let anim_MIAJGroup = CAAnimationGroup()
        
        // 缩放动画
       
        let scale_MIAJtion = CAKeyframeAnimation(keyPath: "transform.scale")
        scale_MIAJtion.values = [1.0, 1.2, 0.9, 1.15, 0.95, 1.0]
        scale_MIAJtion.keyTimes = [0.0, 0.1, 0.3, 0.5, 0.7, 1.0]
        scale_MIAJtion.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        
        // 透明度动画（模拟血压效果）
        let opac_MIAJmation = CAKeyframeAnimation(keyPath: "opacity")
        opac_MIAJmation.values = [1.0, 0.8, 1.0, 0.9, 1.0, 1.0]
        opac_MIAJmation.keyTimes = [0.0, 0.1, 0.3, 0.5, 0.7, 1.0]
        
        // 组合动画
        anim_MIAJGroup.animations = [scale_MIAJtion, opac_MIAJmation]
        anim_MIAJGroup.duration = 3
        anim_MIAJGroup.repeatCount = .infinity // 无限循环
        
        WiujhiView.layer.add(anim_MIAJGroup, forKey: "heartbeat")
      
    }
}
