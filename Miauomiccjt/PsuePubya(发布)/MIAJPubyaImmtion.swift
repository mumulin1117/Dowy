//
//  MIAJPubyaImmtion.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/2/26.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class MIAJPubyaImmtion: UIViewController {

    @IBOutlet weak var fanDismimag: UIImageView!
    
    
    @IBOutlet weak var guessUploafinh: UIImageView!
    
    
    @IBOutlet weak var guessnomalafinh: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        guessUploafinh.isUserInteractionEnabled = true
        guessUploafinh.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector( toucbegeinhUPToday(tauo:))))
        haobminerbuiol()
        
        guessnomalafinh.isUserInteractionEnabled = true
        guessnomalafinh.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector( toucbegeinhUPToday(tauo:))))
    }

    func haobminerbuiol()  {
        
        fanDismimag.isUserInteractionEnabled = true
        fanDismimag.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector( toucbegeinhUPToday(tauo:))))
    }

    
    @objc func toucbegeinhUPToday(tauo:UITapGestureRecognizer)  {
        if tauo.view == fanDismimag {
            self.dismiss(animated: true)
        }
        
        if tauo.view == guessUploafinh {
            self.dismiss(animated: true)
        }
        
        
        if tauo.view == guessnomalafinh {
            self.dismiss(animated: true)
        }
    }
}
