//
//  MIAJOudiyouCell.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/26.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class MIAJOudiyouCell: UITableViewCell {

    @IBOutlet weak var pubuserAvtMIAJ: UIImageView!
    
    @IBOutlet weak var celcovervvMIAJ: UIImageView!
    
    
    @IBOutlet weak var usernnameNIAJ: UILabel!
    
    
    @IBOutlet weak var titkolppppMIAJ: UILabel!
    
    
    
    @IBOutlet weak var heabetCouny: UILabel!
    
    
    @IBOutlet weak var refpiutry: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        pubuserAvtMIAJ.layer.cornerRadius = 25
        pubuserAvtMIAJ.layer.masksToBounds = true
        
        heabetCouny.layer.cornerRadius = 18
        heabetCouny.layer.masksToBounds = true
        celcovervvMIAJ.layer.cornerRadius = 20
        celcovervvMIAJ.layer.masksToBounds = true
    }

   
    
}
