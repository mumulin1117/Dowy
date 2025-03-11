//
//  MIAJTakediImmtion.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/26.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import SnapKit
import SVProgressHUD
class MIAJTakediImmtion: UIViewController {
    
   
    
   
    
    var cbinMIAJ = Array<Dictionary<String,String>>()
    
    @IBOutlet weak var gomiun: UIButton!
    private var countdownMIAJTimer: Timer?
       
    private var blanceMIAJSeconds: Int = 8
   @IBOutlet weak var upGuessShaizi: UIImageView!
   
    private lazy var timeBlancelMIAJ: UILabel = {
        
       let MIAJ = UILabel.init()
        MIAJ.textAlignment = .center
        MIAJ.textColor = .white
       MIAJ.numberOfLines  = 1
        MIAJ.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        MIAJ.text = "00:00"
        
       return MIAJ
    }()
    
   lazy var centrupdateMITA: UIButton = UIButton.init()
   
   lazy var coper0MITA = MIAJQuView.init()
   lazy var coper1MITA = MIAJQuView.init()
   lazy var coper2MITA = MIAJQuView.init()
   lazy var coper3MITA = MIAJQuView.init()
   
    @objc func MJAIfsender()  {
        endTimeMIAKCountdown()
        self.navigationController?.popViewController(animated: true)
    }
    
   override func viewDidLoad() {
        super.viewDidLoad()
       beginTinmingShortCountdown()
      centrupdateMITA.setImage(UIImage.init(named: "shuXinNerlu"), for: .normal)
      centrupdateMITA.addTarget(self, action: #selector(updateselmaploviw), for: .touchUpInside)
      let cooperwid = (UIScreen.main.bounds.width - 27)/2
      let cooperhei = ((UIScreen.main.bounds.height - upGuessShaizi.frame.maxY) - 94.0 - 24 - 26*2)/2
       
       gomiun.addTarget(self, action: #selector(MJAIfsender), for: .touchUpInside)
      
      view.addSubview(coper0MITA)
      view.addSubview(coper1MITA)
      
      view.addSubview(centrupdateMITA)
       centrupdateMITA.addSubview(timeBlancelMIAJ)
      view.addSubview(coper2MITA)
      view.addSubview(coper3MITA)
       coper0MITA.tag = 100
       coper1MITA.tag = 101
       coper2MITA.tag = 102
       coper3MITA.tag = 103
       coper0MITA.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(touchIntagp)))
       coper1MITA.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(touchIntagp)))
       coper2MITA.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(touchIntagp)))
       coper3MITA.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(touchIntagp)))
       
      coper0MITA.snp.makeConstraints { make in
         make.width.equalTo(cooperwid)
         make.leading.equalToSuperview().inset(7)
         make.height.equalTo(cooperhei)
         make.top.equalTo(upGuessShaizi.snp.bottom).offset(26)
      }
      
      coper1MITA.snp.makeConstraints { make in
         make.width.equalTo(cooperwid)
         make.trailing.equalToSuperview().inset(7)
         make.height.equalTo(cooperhei)
         make.top.equalTo(upGuessShaizi.snp.bottom).offset(26)
      }
      centrupdateMITA.snp.makeConstraints { make in
         make.centerX.equalToSuperview()
         make.width.height.equalTo(94)
         make.top.equalTo(coper0MITA.snp.bottom).offset(12)
      }
      coper2MITA.snp.makeConstraints { make in
         make.width.equalTo(cooperwid)
         make.leading.equalToSuperview().inset(7)
         make.height.equalTo(cooperhei)
         make.top.equalTo(centrupdateMITA.snp.bottom).offset(12)
      }
      
      coper3MITA.snp.makeConstraints { make in
         make.width.equalTo(cooperwid)
         make.trailing.equalToSuperview().inset(7)
         make.height.equalTo(cooperhei)
         make.top.equalTo(centrupdateMITA.snp.bottom).offset(12)
      }
       coper0MITA.appreoi.addTarget(self, action: #selector(juiaGopdgerAlert), for: .touchUpInside)
       coper1MITA.appreoi.addTarget(self, action: #selector(juiaGopdgerAlert), for: .touchUpInside)
       coper2MITA.appreoi.addTarget(self, action: #selector(juiaGopdgerAlert), for: .touchUpInside)
       coper3MITA.appreoi.addTarget(self, action: #selector(juiaGopdgerAlert), for: .touchUpInside)
       updateselmaploviw(isfirst: true)
       NotificationCenter.default.addObserver(self, selector: #selector(updateselmaploviw), name: NSNotification.Name.init("remobesomnerUser"), object: nil)
       
       
       timeBlancelMIAJ.snp.makeConstraints { make in
           make.centerX.equalToSuperview()
           make.bottom.equalToSuperview().offset(-16)
           
       }
    }
    @objc func juiaGopdgerAlert() {
        self.aGopdgerCCCUIAlert()
     }
   
    private func endTimeMIAKCountdown() {
        countdownMIAJTimer?.invalidate()
       
        
        timeBlancelMIAJ.text = "00:00"
        
        countdownMIAJTimer = nil
    }
        
       
  
    
    @objc func updateselmaploviw(isfirst:Bool = true)  {
        
        if blanceMIAJSeconds > 0 && isfirst == false {
            SVProgressHUD.showInfo(withStatus: "Please wait for the countdown to end before proceeding!")
            return
        }
        
        self.beginTinmingShortCountdown()
        let alldataCounty = MIAJPerdforemImmtion.momomicMIAJ.count
        
       
        if alldataCounty < 4 {
            self.cbinMIAJ = MIAJPerdforemImmtion.momomicMIAJ.shuffled() // 如果数组元素不足，返回全部元素的随机排列
            
        }
        self.cbinMIAJ = Array(MIAJPerdforemImmtion.momomicMIAJ.shuffled().prefix(4))
        
        
        MIAJPerdforemImmtion.startHeartbeatAnimation(WiujhiView: coper0MITA)
        MIAJPerdforemImmtion.startHeartbeatAnimation(WiujhiView: coper1MITA)
        MIAJPerdforemImmtion.startHeartbeatAnimation(WiujhiView: coper2MITA)
        MIAJPerdforemImmtion.startHeartbeatAnimation(WiujhiView: coper3MITA)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            
           
            self.congfiheurationndata()
            
            self.coper0MITA.layer.removeAllAnimations()
            
            self.coper1MITA.layer.removeAllAnimations()
            self.coper2MITA.layer.removeAllAnimations()
            self.coper3MITA.layer.removeAllAnimations()
            
        }))
    }
    
    @objc private func updateMyDownNJTimer() {
        blanceMIAJSeconds -= 1
        renewTimeing_mjamLabel()
        
        if blanceMIAJSeconds <= 0 {
            endTimeMIAKCountdown()

        }
    }
    @objc func touchIntagp(Refji:UITapGestureRecognizer)  {
        
        let Buter = (Refji.view?.tag ?? 100) - 100
        
        self.navigationController?.pushViewController( MiAJAFetaiolCPImmpo.init(_tdastaMiAJ: cbinMIAJ[Buter], _pageMIAITypeL: 0), animated: true)
    }
   
    private func beginTinmingShortCountdown() {
        timeBlancelMIAJ.text = "00:00"
           
        blanceMIAJSeconds = 8
        renewTimeing_mjamLabel()
        
        countdownMIAJTimer?.invalidate()
        countdownMIAJTimer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(updateMyDownNJTimer),
            userInfo: nil,
            repeats: true
        )
           
          
       }
  
   
    private func congfiheurationndata()  {
        
       
        
       if self.cbinMIAJ.count == 0 {
           SVProgressHUD.showInfo(withStatus: "No more data displayed!")
          
           coper0MITA.isHidden = true
            coper1MITA.isHidden = true
            coper2MITA.isHidden = true
            coper3MITA.isHidden = true
        }
        
       
        if self.cbinMIAJ.count == 1 {
            coper0MITA.avatiewMIAJ.image = UIImage(named: self.cbinMIAJ[0]["MIAJViocovbr"] ?? "")
            coper0MITA.thinketitlMIAJ.text = self.cbinMIAJ[0]["MIAJvioeoTexvct"] ?? ""
            coper0MITA.isHidden = false
            coper1MITA.isHidden = true
            coper2MITA.isHidden = true
            coper3MITA.isHidden = true
            
        }
        
        
        if self.cbinMIAJ.count == 2 {
            coper0MITA.avatiewMIAJ.image = UIImage(named: self.cbinMIAJ[0]["MIAJViocovbr"] ?? "")
            coper0MITA.thinketitlMIAJ.text = self.cbinMIAJ[0]["MIAJvioeoTexvct"] ?? ""
            
            coper1MITA.avatiewMIAJ.image = UIImage(named: self.cbinMIAJ[1]["MIAJViocovbr"] ?? "")
            coper1MITA.thinketitlMIAJ.text = self.cbinMIAJ[1]["MIAJvioeoTexvct"] ?? ""
            
            
            coper0MITA.isHidden = false
            coper1MITA.isHidden = false
            coper2MITA.isHidden = true
            coper3MITA.isHidden = true
        }
        
        
        if self.cbinMIAJ.count == 3  {
            coper0MITA.avatiewMIAJ.image = UIImage(named: self.cbinMIAJ[0]["MIAJViocovbr"] ?? "")
            coper0MITA.thinketitlMIAJ.text = self.cbinMIAJ[0]["MIAJvioeoTexvct"] ?? ""
            
            coper1MITA.avatiewMIAJ.image = UIImage(named: self.cbinMIAJ[1]["MIAJViocovbr"] ?? "")
            coper1MITA.thinketitlMIAJ.text = self.cbinMIAJ[1]["MIAJvioeoTexvct"] ?? ""
            
            coper2MITA.avatiewMIAJ.image = UIImage(named: self.cbinMIAJ[2]["MIAJViocovbr"] ?? "")
            coper2MITA.thinketitlMIAJ.text = self.cbinMIAJ[2]["MIAJvioeoTexvct"] ?? ""
           
            coper0MITA.isHidden = false
            coper1MITA.isHidden = false
            coper2MITA.isHidden = false
            coper3MITA.isHidden = true
        }
          
        if self.cbinMIAJ.count == 4 {
            coper0MITA.avatiewMIAJ.image = UIImage(named: self.cbinMIAJ[0]["MIAJViocovbr"] ?? "")
            coper0MITA.thinketitlMIAJ.text = self.cbinMIAJ[0]["MIAJvioeoTexvct"] ?? ""
            
            coper1MITA.avatiewMIAJ.image = UIImage(named: self.cbinMIAJ[1]["MIAJViocovbr"] ?? "")
            coper1MITA.thinketitlMIAJ.text = self.cbinMIAJ[1]["MIAJvioeoTexvct"] ?? ""
            
            coper2MITA.avatiewMIAJ.image = UIImage(named: self.cbinMIAJ[2]["MIAJViocovbr"] ?? "")
            coper2MITA.thinketitlMIAJ.text = self.cbinMIAJ[2]["MIAJvioeoTexvct"] ?? ""
            
            coper3MITA.avatiewMIAJ.image = UIImage(named: self.cbinMIAJ[3]["MIAJViocovbr"] ?? "")
            coper3MITA.thinketitlMIAJ.text = self.cbinMIAJ[3]["MIAJvioeoTexvct"] ?? ""
            
            coper0MITA.isHidden = false
            coper1MITA.isHidden = false
            coper2MITA.isHidden = false
            coper3MITA.isHidden = false
        }
        
        
    }
    
    private func renewTimeing_mjamLabel() {
        let minutes = blanceMIAJSeconds / 60
        let seconds = blanceMIAJSeconds % 60
        timeBlancelMIAJ.text = String(format: "%02d:%02d", minutes, seconds)
    }
    
  
    
}


class MIAJQuView: UIView {
   
   lazy var coverviewMIAJ: UIImageView = {
      let coverview = UIImageView.init()
      coverview.layer.cornerRadius = 12
       coverview.image = UIImage(named: "colofulcellbl")
      coverview.layer.masksToBounds = true
       coverview.contentMode = .scaleToFill
      return coverview
   }()
   
   
   lazy var avatiewMIAJ: UIImageView = {
      let coverview = UIImageView.init()
      coverview.layer.cornerRadius = 12
      coverview.layer.masksToBounds = true
      coverview.contentMode = .scaleAspectFill
      return coverview
   }()
   
   
   lazy var thinketitlMIAJ: UILabel = {
      let lalbl = UILabel.init()
      lalbl.textColor = .white
      lalbl.numberOfLines  = 1
       lalbl.font = UIFont(name: "Futura", size: 14)
      lalbl.textAlignment = .center
      return lalbl
   }()
   
   lazy var olaplaima: UIImageView = {
      let coverview = UIImageView.init()
       coverview.image = UIImage(named: "yx_aniuhplay")
      coverview.contentMode = .scaleToFill
      return coverview
   }()
    
    
    lazy var centrolaplaima: UIImageView = {
       let coverview = UIImageView.init()
        coverview.image = UIImage(named: "biolplo")
       coverview.contentMode = .scaleToFill
       return coverview
    }()
    
    lazy var appreoi: UIButton = {
        let appreoi = UIButton()
        
        appreoi.setImage(UIImage.init(named: "repoutinUser"), for: .normal)
        return appreoi
    }()
    
   override init(frame: CGRect) {
      super.init(frame: frame)
      
       self.backgroundColor = .clear
     
      
      addSubview(coverviewMIAJ)
      coverviewMIAJ.snp.makeConstraints { make in
         make.edges.equalToSuperview()
      }
      
      addSubview(avatiewMIAJ)
      avatiewMIAJ.snp.makeConstraints { make in
         make.top.leading.trailing.equalToSuperview().inset(5)
         make.bottom.equalToSuperview().offset(-30)
      }
      
      addSubview(olaplaima)
      olaplaima.snp.makeConstraints { make in
         make.width.equalTo(110)
         make.height.equalTo(32)
         make.centerX.equalToSuperview()
         make.bottom.equalToSuperview().offset(-9)
      }
      
      addSubview(thinketitlMIAJ)
      thinketitlMIAJ.snp.makeConstraints { make in
         make.left.right.equalToSuperview().inset(14)
         make.bottom.equalTo(olaplaima.snp.top).offset(-18)
      }
       
       addSubview(centrolaplaima)
       centrolaplaima.snp.makeConstraints { make in
           make.center.equalToSuperview()
           make.width.height.equalTo(50)
       }
       
       addSubview(appreoi)
       appreoi.snp.makeConstraints { make in
           make.width.height.equalTo(32)
           make.top.trailing.equalToSuperview().inset(6)
       }
   }
   
   required init?(coder: NSCoder) {
      fatalError("reBuiMIAd")
   }
}
