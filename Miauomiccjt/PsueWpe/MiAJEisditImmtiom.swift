//
//  MiAJEisditImmtiom.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class MiAJEisditImmtiom: UIViewController {

    @IBOutlet weak var gomiun: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ainsertbnh()
        cmnumunkbkb()
       
        
    }

    @IBAction func olKoisuger(_ sender: UIButton) {
    }
    
    private func cmnumunkbkb()  {
        
       
       
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
    
   @objc func edoupUiseinfo()  {
        
    }


   
}
