//
//  MIAJTakediImmtion.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/2/26.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import SnapKit
class MIAJTakediImmtion: UIViewController {
    var cbinMIAJ = Array<Dictionary<String,String>>()
    
    
    
   @IBOutlet weak var upGuessShaizi: UIImageView!
   
   lazy var centrupdateMITA: UIButton = UIButton.init()
   
   lazy var coper0MITA = MIAJQuView.init()
   lazy var coper1MITA = MIAJQuView.init()
   lazy var coper2MITA = MIAJQuView.init()
   lazy var coper3MITA = MIAJQuView.init()
   
   override func viewDidLoad() {
        super.viewDidLoad()
      centrupdateMITA.setImage(UIImage.init(named: "shuXinNerlu"), for: .normal)
      centrupdateMITA.addTarget(self, action: #selector(updateselmaploviw), for: .touchUpInside)
      let cooperwid = (UIScreen.main.bounds.width - 27)/2
      let cooperhei = ((UIScreen.main.bounds.height - upGuessShaizi.frame.maxY) - 94.0 - 24 - 26*2)/2
      view.addSubview(coper0MITA)
      view.addSubview(coper1MITA)
      
      view.addSubview(centrupdateMITA)
      view.addSubview(coper2MITA)
      view.addSubview(coper3MITA)
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
       
       updateselmaploviw()
    }
   
  
    
    
    @objc func updateselmaploviw()  {
        
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
    
    
    
    private func congfiheurationndata()  {
        
       
        
       if self.cbinMIAJ.count == 0 {
           
           "提示：没有更多数据展示"
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
   }
   
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
