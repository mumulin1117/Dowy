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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if view.backgroundColor == .red {
            return 9 + 1
        }
        return 9 + 1
    }
    
    
    @IBOutlet weak var trunbvButon: UIButton!
    
    
    
    var inguserBlance:String{
        let inguser = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String> ?? [:]
        return inguser["MIAJCoinB"] ?? "0"
    }
    
    var alpubleMiAJ:Array<(String,String,String)> = Array<(String,String,String)>()
    
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let biopp = collectionView.dequeueReusableCell(withReuseIdentifier: "MiAJBolanvecID", for: indexPath) as! MiAJBolanvec
        biopp.thinketitlMIAJ.text = "+\(alpubleMiAJ[indexPath.row].0)"
        biopp.olaplaima.setTitle(alpubleMiAJ[indexPath.row].2, for: .normal)
        return biopp
        
    }
    
    
    
    
    func BeigZuo(indexf:Int)->(String,String,String)  {
        let payingIds = alpubleMiAJ[indexf]
        
        self.view.isUserInteractionEnabled = false
        SVProgressHUD.show(withStatus: "Paying...")
        return payingIds
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
       let payingIds = BeigZuo(indexf:indexPath.row)
        
       
        SwiftyStoreKit.purchaseProduct(payingIds.1, atomically: true) { psResult in
            var ggolr:Bool = false
            self.view.isUserInteractionEnabled = true
           
            
            var orighanme:String = "Cubecm"
            
            var empwd = ""
            SVProgressHUD.dismiss()
            if case .success(let psPurch) = psResult {
                
                
               
              
                let psdownloads = psPurch.transaction.downloads
                if ggolr == false {
                    if !psdownloads.isEmpty {
                        SwiftyStoreKit.start(psdownloads)
                    }
                }
                
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
            
                var trbsla = true
                if orighanme.count == 0 {
                    ggolr = false
                }
                
                var mianLop =  Int( self.inguserBlance) ?? 0
                
                var newBuy = Int( payingIds.0) ?? 0
                if ggolr == false {
                    mianLop = mianLop +  newBuy
                    self.upamusiMOfangshow(neri: mianLop)
                }
                
                
          
            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                  
                    return
                }
                var trbsla = true
                if orighanme.count == 0 {
                    ggolr = false
                }
                if ggolr == false {
                    SVProgressHUD.showError(withStatus: error.localizedDescription)
                }
               
               
            }
        }
        
        
        
    }
    
    
    
    
    
    @IBOutlet weak var gomiun: UIImageView!
    
    @IBOutlet weak var pinkernig: UIView!
    @IBOutlet weak var aiopBlance: UILabel!
    
    @objc func MJAIfsender()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func upamusiMOfangshow(neri:Int)  {
        self.aiopBlance.text = "\(neri)"
      
        SVProgressHUD.showSuccess(withStatus: "Successful payment!")

        MiAJEisditImmtiom.updaterudeingfowithNew(naem: nil, bnhbrief: nil, blancefpoi: "\(neri)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.aiopBlance.text = self.inguserBlance
        
        trunbvButon.addTarget(self, action: #selector(MJAIfsender), for: .touchUpInside)
        trnbcdsdm()
        
        
        alpubleMiAJ = [(self.restobuingd(Cubecm:"4h0q0"),"sneufalxrsvdezhs",self.restobuingd(Cubecm:"$v0e.a9h9")),
                       (self.restobuingd(Cubecm:"8v0f0"),"nwptwfzqdadbblei",self.restobuingd(Cubecm:"$s1j.p9r9")),
                       (self.restobuingd(Cubecm:"2h4x5c0"),"hhkximdsbflyvucx",self.restobuingd(Cubecm:"$o4h.d9a9")),
                       (self.restobuingd(Cubecm:"4e9y0f0"),"xpnayttqrxzmhjkk",self.restobuingd(Cubecm:"$c9f.d9q9")),
                       (self.restobuingd(Cubecm:"9v8s0b0"),"fhcjqodkgartaqph",self.restobuingd(Cubecm:"$r1r9f.l9e9")),
                       (self.restobuingd(Cubecm:"1r0e5m0v0"),"dowynmcvbnbjfu",self.restobuingd(Cubecm:"$z2h9c.z9a9")),
                       (self.restobuingd(Cubecm:"2e4y5k0b0"),"vprqykjiylpzlpof",self.restobuingd(Cubecm:"$g4z9u.b9m9")),
                       (self.restobuingd(Cubecm:"3s4l5a0u0"),"dowyzowieguhdr",self.restobuingd(Cubecm:"$z6v9p.n9l9")),
                       (self.restobuingd(Cubecm:"4r5v5i0s0"),"dowyaowmmvieuu",self.restobuingd(Cubecm:"$y8v9y.n9i9")),
                       (self.restobuingd(Cubecm:"4s9t0r0b0"),"doiodwkldcnnlnfo",self.restobuingd(Cubecm:"$l9f9v.x9h9"))
                       
                      
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
        fatalError("reBuiMIAd")
    }
}
