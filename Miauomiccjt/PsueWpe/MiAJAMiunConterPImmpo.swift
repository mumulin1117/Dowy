//
//  MiAJAMiunConterPImmpo.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/5.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit


enum MiAJTui :String{

    case fanbe = "Fans"
    case folower = "Followed"
    case post = "Post"
}
class MiAJAMiunConterPImmpo: UIViewController {
    
    @IBOutlet weak var babertet: UILabel!
    
    @IBOutlet weak var titleLebeMIAh: UILabel!
    
    var bxc:MiAJTui
    init(bxc: MiAJTui) {
        self.bxc = bxc
        super.init(nibName: nil, bundle: nil)
    }
    @IBOutlet weak var bagimage: UIImageView!
    
    required init?(coder: NSCoder) {
        fatalError("reBuiMIAd")
    }
    
    
    @objc func Aginhert()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bagimage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Aginhert)))
        titleLebeMIAh.text = bxc.rawValue
        
        schancingCover.layer.cornerRadius = 25
        schancingCover.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        
        
        
        if bxc == .post {
            babertet.isHidden = false
            schancingCover.isHidden = true
        }
        
        
        if bxc == .fanbe && MIAJWuoeImmtion.lognFacing.count == 0{
            babertet.isHidden = false
            schancingCover.isHidden = true
        }
        
        
        if bxc == .folower && MIAJWuoeImmtion.lognfolloweing.count == 0{
            babertet.isHidden = false
            schancingCover.isHidden = true
        }
        
        
        
        if bxc == .fanbe && MIAJWuoeImmtion.lognFacing.count > 0 {
            babertet.isHidden = true
            schancingCover.isHidden = false
            
            for (sdjjj,Iterm) in MIAJWuoeImmtion.lognFacing.enumerated() {
                XcretItermMofamagi(datainFo: Iterm, index: sdjjj)
            }
            
            
        }
        
        if bxc == .folower && MIAJWuoeImmtion.lognfolloweing.count > 0{
            babertet.isHidden = true
            schancingCover.isHidden = false
            
            for (sdjjj,Iterm) in MIAJWuoeImmtion.lognfolloweing.enumerated() {
                XcretItermMofamagi(datainFo: Iterm, index: sdjjj)
            }
        }
        
        
    }
    
    
    func XcretItermMofamagi(datainFo:Dictionary<String,String>,index:Int)  {
        let uibier = UIView.init()
        uibier.backgroundColor = .white
        uibier.layer.cornerRadius = 12
        uibier.layer.masksToBounds = true
        uibier.layer.borderColor = UIColor(red: 0.22, green: 0.73, blue: 0.85, alpha: 1).cgColor
        uibier.layer.borderWidth = 1
        
        view.addSubview(uibier)
        uibier.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(7)
            make.height.equalTo(90)
            make.top.equalTo(schancingCover.snp.top).offset(20 + 100*index)
        }
        
        let titleImag = UIImageView.init()
        titleImag.contentMode = .scaleAspectFill
        titleImag.layer.cornerRadius = 30
        titleImag.layer.masksToBounds = true
        uibier.addSubview(titleImag)
        titleImag.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(15)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(60)
        }
        
        let defatailLable = UILabel.init()
        defatailLable.textColor = .black
        defatailLable.textAlignment = .left
        defatailLable.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        
        uibier.addSubview(defatailLable)
        defatailLable.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(87)
            make.top.equalToSuperview().offset(12)
            make.trailing.equalToSuperview().inset(10)
        }
        
        
        let briestable = UILabel.init()
        briestable.textColor = .lightGray
        briestable.textAlignment = .left
        briestable.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        
        uibier.addSubview(briestable)
        briestable.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(87)
            make.bottom.equalToSuperview().offset(-12)
            make.trailing.equalToSuperview().inset(13)
        }
        
        
        titleImag.image = UIImage(named: datainFo["MIAJphotl"] ?? "")
        defatailLable.text = datainFo["MIAJNbbme"]
        briestable.text = datainFo["MIAJBrief"]
        
    }

    @IBOutlet weak var schancingCover: UIView!
    
   

}



