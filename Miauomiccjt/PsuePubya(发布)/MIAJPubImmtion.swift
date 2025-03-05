//
//  MIAJPubImmtion.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class MIAJPubImmtion: UIViewController ,UITextViewDelegate{
    
    
    @IBOutlet weak var deleteReloadNu: UIButton!
    
    var typrTag:Int = 0{
        didSet{
            if typrTag == 0 {
                typeViddeotMIAJ.text = "Upload Regular Video"
                retkBack.image = UIImage(named: "menbaugnormlussse")
                let origFram = whoareyouenter.frame
                
                whoareyouenter.frame = CGRect(origin: origFram.origin, size: CGSize.init(width: origFram.width, height: 0))
            }
        }
    }
    
    
    @IBOutlet weak var retkBack: UIImageView!
    
    @IBOutlet weak var typeViddeotMIAJ: UILabel!
    
    
    @IBOutlet weak var mindenter: UITextView!
    
    @IBOutlet weak var whoareyouenter: UITextField!
    
    
    @IBOutlet weak var reakUp: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fixAllUIfl()
        achunhjiGtradilayer()
        
        
        
    }

    
    func fixAllUIfl() {
        whoareyouenter.layer.masksToBounds = true
        mindenter.layer.masksToBounds = true
        
        whoareyouenter.layer.cornerRadius = 15
        mindenter.layer.cornerRadius = 15
        mindenter.delegate = self
        mindenter.contentInset = UIEdgeInsets(top: 20, left: 18, bottom: 8, right: 18)
    }

    func achunhjiGtradilayer() {
        let coloergulh = CAGradientLayer()
        coloergulh.colors = [UIColor(red: 1, green: 0.54, blue: 0.27, alpha: 1).cgColor, UIColor(red: 0.22, green: 0.73, blue: 0.85, alpha: 1).cgColor, UIColor(red: 0.42, green: 0, blue: 0.73, alpha: 1).cgColor]
        coloergulh.locations = [0, 0.4884897046308874, 1]
        coloergulh.frame = whoareyouenter.bounds
        coloergulh.startPoint = CGPoint(x: 0, y: 0.44)
        coloergulh.endPoint = CGPoint(x: 0.44, y: 0.44)
        whoareyouenter.layer.addSublayer(coloergulh)
    }

    
    @IBAction func finnalyMIAG(_ sender: Any) {
        
        
    }
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
        
    }
    
    @IBAction func uploadingvirdeoFinnal(_ sender: UIButton) {
        
        
        
        
        
    }
    
    
    
    @IBAction func reupNionh(_ sender: Any) {
    }
    
    
    
    
}
