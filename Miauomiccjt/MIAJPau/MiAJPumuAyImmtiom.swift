//
//  MiAJPumuAyImmtiom.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class MiAJPumuAyImmtiom: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let biopp = collectionView.dequeueReusableCell(withReuseIdentifier: "MiAJBolanvecID", for: indexPath) as! MiAJBolanvec
       
        return biopp
        
    }
    
    
    
    
    
    @IBOutlet weak var gomiun: UIImageView!
    
    @IBOutlet weak var pinkernig: UIView!
    @IBOutlet weak var aiopBlance: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aiopAllopBmalces.register(MiAJBolanvec.self, forCellWithReuseIdentifier: "MiAJBolanvecID")
        aiopAllopBmalces.dataSource = self
        aiopAllopBmalces.contentInset = UIEdgeInsets(top: 30, left: 12, bottom: 100, right: 12)
       
        ainsertbnh()
    }
    
    
    
    func ainsertbnh()  {
        
        gomiun.isUserInteractionEnabled = true
        gomiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
    }

    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
        if tgmni.view == gomiun {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    fileprivate func setinguistutl() {
        pinkernig.layer.cornerRadius = 20
        pinkernig.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMinYCorner]
        
      
    }
    
    @IBOutlet weak var aiopAllopBmalces: UICollectionView!
    
    
}


class MiAJBolanvec: UICollectionViewCell {
    
    private lazy var coverviewMIAJ: UIImageView = {
       let coverview = UIImageView.init()
     
        coverview.image = UIImage(named: "colofulcellbl")
       coverview.layer.masksToBounds = true
        coverview.contentMode = .scaleToFill
       return coverview
    }()
    
    
    private  lazy var diomewMIAJ: UIImageView = {
       let coverview = UIImageView.init()
        coverview.image = UIImage(named: "bighadiomein")
       coverview.contentMode = .scaleAspectFill
       return coverview
    }()
    
    
    lazy var thinketitlMIAJ: UILabel = {
       let lalbl = UILabel.init()
        lalbl.textColor = .black
       lalbl.numberOfLines  = 1
        lalbl.font = UIFont(name: "☞Gilroy-Bold", size: 20)
       lalbl.textAlignment = .center
       return lalbl
    }()
    
    lazy var olaplaima: UIButton = {
       let coverview = UIButton.init()
        coverview.setBackgroundImage(UIImage.init(named: ""), for: .normal)
        coverview.setTitleColor(.white, for: .normal)
        coverview.titleLabel?.font =  UIFont(name: "☞Gilroy-Bold", size: 15)
       return coverview
    }()
     
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        adreag()
        
        
        contentView.addSubview(thinketitlMIAJ)
        thinketitlMIAJ.snp.makeConstraints { make in
          
            make.top.equalTo(diomewMIAJ.snp.bottom).offset(11)
            make.centerX.equalToSuperview()
        }
        
        contentView.addSubview(olaplaima)
        olaplaima.snp.makeConstraints { make in
            make.width.equalTo(90)
            make.height.equalTo(32)
            make.top.equalTo(thinketitlMIAJ.snp.bottom).offset(17)
            make.centerX.equalToSuperview()
        }
    }
    
    
    fileprivate func adreag()  {
        self.backgroundColor = .clear
        contentView.addSubview(coverviewMIAJ)
        coverviewMIAJ.addSubview(coverviewMIAJ)
        coverviewMIAJ.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        contentView.addSubview(diomewMIAJ)
        diomewMIAJ.snp.makeConstraints { make in
            make.width.height.equalTo(48)
            make.top.equalToSuperview().offset(12)
            make.centerX.equalToSuperview()
        }
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
