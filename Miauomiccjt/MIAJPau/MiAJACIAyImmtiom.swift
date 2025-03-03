//
//  MiAJACIAyImmtiom.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

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

        AnimationConfig()
        cikdgrt.selectItem(at: IndexPath.init(row: 0, section: 0), animated: true, scrollPosition: .top)
        
        trauilLabelio()
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
}
