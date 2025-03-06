//
//  MiAJPumuAyImmtiom.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import SwiftyStoreKit
import SVProgressHUD
class MiAJPumuAyImmtiom: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var trunbvButon: UIButton!
    
    
    
    var inguserBlance:String{
        let inguser = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String> ?? [:]
        return inguser["MIAJCoinB"] ?? "0"
    }
    
    var alpubleMiAJ:Array<(Int,String,String)> = Array<(Int,String,String)>()
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let biopp = collectionView.dequeueReusableCell(withReuseIdentifier: "MiAJBolanvecID", for: indexPath) as! MiAJBolanvec
        biopp.thinketitlMIAJ.text = "+\(alpubleMiAJ[indexPath.row].0)"
        biopp.olaplaima.setTitle(alpubleMiAJ[indexPath.row].2, for: .normal)
        return biopp
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        
        
        let payingIds = alpubleMiAJ[indexPath.row]
        
        self.view.isUserInteractionEnabled = false
        SVProgressHUD.show(withStatus: "Paying...")
        SwiftyStoreKit.purchaseProduct(payingIds.1, atomically: true) { psResult in
         
            self.view.isUserInteractionEnabled = true
            SVProgressHUD.dismiss()
            if case .success(let psPurch) = psResult {
               
              
                let psdownloads = psPurch.transaction.downloads
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
            
               
                
                var mianLop =  Int( self.inguserBlance) ?? 0
                
                mianLop = mianLop + payingIds.0

                self.aiopBlance.text = "\(mianLop)"
              
                SVProgressHUD.showSuccess(withStatus: "Successful payment!")

                MiAJEisditImmtiom.updaterudeingfowithNew(naem: nil, bnhbrief: nil, blancefpoi: "\(mianLop)")
          
            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                  
                    return
                }
           
                SVProgressHUD.showError(withStatus: error.localizedDescription)
               
            }
        }
        
        
        
    }
    
    
    @IBOutlet weak var gomiun: UIImageView!
    
    @IBOutlet weak var pinkernig: UIView!
    @IBOutlet weak var aiopBlance: UILabel!
    
    @objc func MJAIfsender()  {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.aiopBlance.text = self.inguserBlance
        
        trunbvButon.addTarget(self, action: #selector(MJAIfsender), for: .touchUpInside)
        trnbcdsdm()
        alpubleMiAJ = [(400,"sneufalxrsvdezhs","$0.99"),
                       (800,"nwptwfzqdadbblei","$1.99"),
                       (2450,"hhkximdsbflyvucx","$4.99"),
                       (4900,"xpnayttqrxzmhjkk","$9.99"),
                       (9800,"fhcjqodkgartaqph","$19.99"),
                       (10500,"dowynmcvbnbjfu","$29.99"),
                       (24500,"vprqykjiylpzlpof","$49.99"),
                       (34500,"dowyzowieguhdr","$69.99"),
                       (45500,"dowyaowmmvieuu","$89.99"),
                       (49000,"doiodwkldcnnlnfo","$99.99")
                       
                      
                      ]
        aiopAllopBmalces.register(MiAJBolanvec.self, forCellWithReuseIdentifier: "MiAJBolanvecID")
        aiopAllopBmalces.dataSource = self
        aiopAllopBmalces.contentInset = UIEdgeInsets(top: 30, left: 12, bottom: 100, right: 12)
       
        aiopAllopBmalces.backgroundColor = UIColor(red: 1, green: 0.89, blue: 0.92, alpha: 1)
        aiopAllopBmalces.layer.cornerRadius = 30
        aiopAllopBmalces.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        ainsertbnh()
    }
    
    
    
    func trnbcdsdm()  {
        let lauout = UICollectionViewFlowLayout.init()
        lauout.itemSize = CGSize(width: (UIScreen.main.bounds.width - 48)/3, height: 150)
        lauout.minimumLineSpacing = 12
        lauout.minimumInteritemSpacing = 12
        aiopAllopBmalces.collectionViewLayout = lauout
        aiopAllopBmalces.delegate = self
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
        coverview.layer.cornerRadius = 16
        coverview.layer.masksToBounds = true
        coverview.isUserInteractionEnabled = false
        coverview.backgroundColor =  UIColor(red: 0.63, green: 0.03, blue: 0.73, alpha: 1)
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
