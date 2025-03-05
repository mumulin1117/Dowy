//
//  MiAJACIAyImmtiom.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import SVProgressHUD
class MiAJACIAyImmtiom: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    var pikingAHI:Int = 0
    
    var pickinghSoiuce:[(Bool,String,String)] = [(true,"MiAJ_Realistic","TV roles"),
                                                 (false,"MiAJ_Cartoon","Singer"),
                                                 (false,"MiAJ_Anime","Anime"),
                                                 (false,"MiAJ_Retro","Vintage"),
                                                 (false,"MiAJ_Cyberpunk","Fairy Tale")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let bumnjcell = collectionView.dequeueReusableCell(withReuseIdentifier: "MiAJACPickCellID", for: indexPath) as! MiAJACPickCell
        bumnjcell.coverviewMIAJ.image = UIImage(named: pickinghSoiuce[indexPath.row].1)
        return bumnjcell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        pikingAHI = indexPath.row
    }

    @IBOutlet weak var trunbvButon: UIButton!
    
    
    @IBOutlet weak var descvtnum: UILabel!
    
    
    
    @IBOutlet weak var typecvtnum: UILabel!
    
    
    @IBOutlet weak var ebtruDesbMIAJ: UITextView!
    
    
    
    
    
    @IBOutlet weak var cikdgrt: UICollectionView!
    
    
    @IBOutlet weak var aiopBlance: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trunbvButon.addTarget(self, action: #selector(MJAIfsender), for: .touchUpInside)
        AnimationConfig()
        cikdgrt.selectItem(at: IndexPath.init(row: 0, section: 0), animated: true, scrollPosition: .top)
        
        trauilLabelio()
    }

    
    @objc func MJAIfsender()  {
        self.navigationController?.popViewController(animated: true)
    }
    private func AnimationConfig() {
        cikdgrt.layer.cornerRadius = 16
        cikdgrt.layer.masksToBounds = true
        
        ebtruDesbMIAJ.layer.cornerRadius = 16
        ebtruDesbMIAJ.contentInset = UIEdgeInsets.init(top: 20, left: 16, bottom: 12, right: 16)
        ebtruDesbMIAJ.layer.masksToBounds = true
        
        
        cikdgrt.delegate = self
        let soulayout = UICollectionViewFlowLayout.init()
        
        cikdgrt.dataSource = self
        cikdgrt.collectionViewLayout = soulayout
        soulayout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 26)/3, height: 140)
        soulayout.minimumLineSpacing = 15
        soulayout.minimumInteritemSpacing = 0
        soulayout.scrollDirection = .vertical
        cikdgrt.register(MiAJACPickCell.self, forCellWithReuseIdentifier: "MiAJACPickCellID")
        
        
    }
    
    func trauilLabelio()  {
        typecvtnum.layer.cornerRadius = 16
        typecvtnum.layer.masksToBounds = true
        
        descvtnum.layer.cornerRadius = 16
        descvtnum.layer.masksToBounds = true
    }
    
    
    
    @IBAction func MIAJOkayHaolo(_ sender: UIButton) {
        if let allContable = ebtruDesbMIAJ.text, allContable.isEmpty == false {
            //email 作为ID 对应dic
            //获取当前的ID 对一金币
            var Currency:Int = 0
            if Currency < 300 {
                let Zjiu = MiAJPumuAyImmtiom.init()
                self.navigationController?.pushViewController(Zjiu, animated: true)
                
                return
            }
            
            
            Currency -= 300
            
            var sugeetypr :MiAJSuguesstionType = .TVroles
            switch pikingAHI {
            case 0:
                sugeetypr = .TVroles
            case 1:
                sugeetypr = .Singer
            case 2:
                sugeetypr = .Anime
            case 3:
                sugeetypr = .Vintage
            case 4:
                sugeetypr = .FairyTale
            default:
                break
            }
            
            self.navigationController?.pushViewController(MiAJACPiReslit.init(SuguesstionType: sugeetypr, roleplayDesc: allContable), animated: true)
            
            return
        }
        SVProgressHUD.showInfo(withStatus: "Please enter the keywords you want describe!")
        
        
        
    }
    
    
    
}
