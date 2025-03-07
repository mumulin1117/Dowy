//
//  MiAJACPickCell.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class MiAJACPickCell: UICollectionViewCell {
    
     lazy var coverviewMIAJ: UIImageView = {
       let coverview = UIImageView.init()
     
      
       coverview.layer.masksToBounds = true
        coverview.contentMode = .scaleToFill
       return coverview
    }()
    
    
      lazy var diomewMIAJ: UIImageView = {
       let MIAJ = UIImageView.init()
        MIAJ.image = UIImage(named: "mxzdys")
       MIAJ.contentMode = .scaleAspectFill
       return MIAJ
    }()
    
    
    lazy var thinketitlMIAJ: UILabel = {
       let MIAJ = UILabel.init()
        MIAJ.textColor = .black
       MIAJ.numberOfLines  = 1
        MIAJ.font = UIFont(name: "☞Gilroy-Bold", size: 14)
       MIAJ.textAlignment = .center
       return MIAJ
    }()
    
   
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        adreag()
        
        
        contentView.addSubview(thinketitlMIAJ)
        thinketitlMIAJ.snp.makeConstraints { make in
          
            make.top.equalTo(diomewMIAJ.snp.bottom).offset(7)
            make.centerX.equalToSuperview()
        }
        
        
    }
    
    
    fileprivate func adreag()  {
        self.backgroundColor = .white
        coverviewMIAJ.layer.cornerRadius = 12
        coverviewMIAJ.layer.masksToBounds = true
        
        coverviewMIAJ.layer.borderColor =  UIColor(red: 0.94, green: 0.55, blue: 1, alpha: 1).cgColor
        coverviewMIAJ.layer.borderWidth = 0
        contentView.addSubview(coverviewMIAJ)
        
        coverviewMIAJ.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(6)
            make.height.equalTo(98)
            make.top.equalToSuperview().offset(24)
        }
        
        contentView.addSubview(diomewMIAJ)
        diomewMIAJ.snp.makeConstraints { make in
            make.width.height.equalTo(24)
            make.top.equalTo(coverviewMIAJ.snp.bottom).offset(-12)
            make.centerX.equalToSuperview()
        }
        
       
        
    }
    required init?(coder: NSCoder) {
        fatalError("reBuiMIAd")
    }
    
    override var isSelected: Bool{
        didSet{
            if isSelected {
                coverviewMIAJ.layer.borderWidth = 2
                diomewMIAJ.image = UIImage(named: "xzdys")
            }else{
                coverviewMIAJ.layer.borderWidth = 0
                diomewMIAJ.image = UIImage(named: "mxzdys")
            }
        }
    }
}
