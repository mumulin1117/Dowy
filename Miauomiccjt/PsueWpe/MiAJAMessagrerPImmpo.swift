//
//  MiAJAMessagrerPImmpo.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/6.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class MiAJAMessagrerPImmpo: UIViewController {

    @IBOutlet weak var pindataViewShiom: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Bagtuine.isUserInteractionEnabled = true
        Bagtuine.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(backONmoreing)))
        
        pindataViewShiom.layer.cornerRadius = 16
        pindataViewShiom.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    }

    @IBOutlet weak var Bagtuine: UIImageView!
    
   @objc func backONmoreing()  {
       self.navigationController?.popViewController(animated: true)
    }

}
