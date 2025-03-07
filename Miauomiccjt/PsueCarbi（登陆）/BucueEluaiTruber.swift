//
//  BucueEluaiTruber.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/28.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class BucueEluaiTruber: UIViewController {
   
   var bloakMIAJ:((Bool) -> Void)?
   
    lazy var shoingindicatoer:UITextView  = {
      let bshoingindicatoer = UITextView.init()
      bshoingindicatoer.contentInset = UIEdgeInsets(top: 30, left: 20, bottom: 12, right: 20)
      bshoingindicatoer.textColor = .black
      bshoingindicatoer.isEditable = false
      bshoingindicatoer.isScrollEnabled = true
      bshoingindicatoer.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        bshoingindicatoer.backgroundColor = .clear
      return bshoingindicatoer
   }()
   
   private lazy var agbreenButtonMIAJ: UIButton = {
      let MIAJ = UIButton.init()
      MIAJ.setBackgroundImage(UIImage.init(named: "colofulanniu"), for: .normal)
      MIAJ.addTarget(self, action: #selector(baIAgreeNOing), for: .touchUpInside)
      MIAJ.setTitleColor(.white, for: .normal)
       let wgoMIAJ5 =  self.restobuingd(Cubecm:"Ii saggfrieze")
      MIAJ.setTitle(wgoMIAJ5, for: .normal)
      MIAJ.titleLabel?.font =  UIFont.systemFont(ofSize: 15, weight: .bold)
      return MIAJ
   }()
   
   
   
   private lazy var gosouButtonMIAJ: UIButton = {
      let MIAJ = UIButton.init()
      MIAJ.setBackgroundImage(UIImage.init(named: "gozouMAkl"), for: .normal)
      MIAJ.addTarget(self, action: #selector(bajiugkNOing), for: .touchUpInside)
      return MIAJ
   }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
       self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7000)
       
       let Avimagre = UIImageView.init(image: UIImage.init(named: "MIAJELUAbl"))
       Avimagre.contentMode = .scaleToFill
       
       view.addSubview(Avimagre)
       Avimagre.isUserInteractionEnabled = true
       Avimagre.snp.makeConstraints { make in
          make.top.equalToSuperview().offset(56)
          make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 66)
          make.leading.trailing.equalToSuperview().inset(30)
       }
       
       Avimagre.addSubview(shoingindicatoer)
       Avimagre.addSubview(agbreenButtonMIAJ)
       
       haobminerbuiol()
    }
    

   func haobminerbuiol()  {
      agbreenButtonMIAJ.snp.makeConstraints { make in
         make.width.equalTo(227)
         make.height.equalTo(56)
         make.bottom.equalToSuperview().offset(-31)
         make.centerX.equalToSuperview()
      }
      
      shoingindicatoer.snp.makeConstraints { make in
          make.top.leading.trailing.equalToSuperview()
          make.bottom.equalTo(agbreenButtonMIAJ.snp.top)
      }
      
      view.addSubview(gosouButtonMIAJ)
      gosouButtonMIAJ.snp.makeConstraints { make in
         make.width.height.equalTo(18)
         make.centerX.equalToSuperview()
          make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 26)
      }
   }

  @objc func bajiugkNOing()  {
     self.dismiss(animated: true)
   }
   
   
   
   @objc func baIAgreeNOing()  {
      self.dismiss(animated: true)
      
   
      bloakMIAJ?(true)
    }

}
