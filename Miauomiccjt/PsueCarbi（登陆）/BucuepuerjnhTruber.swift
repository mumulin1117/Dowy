//
//  BucuepuerjnhTruber.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/2/28.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class BucuepuerjnhTruber: UIViewController {

   @IBOutlet weak var fuolinkUr: UIImageView!
   
   
   
   @IBOutlet weak var workinchu: UITextField!
   
   
   @IBOutlet weak var dagonrchu: UITextField!
   
   override func viewDidLoad() {
        
      super.viewDidLoad()
      
      scetupionnwingui()
     
       workinchu.layer.borderColor = UIColor.black.cgColor
       workinchu.layer.borderWidth = 2
       workinchu.layer.masksToBounds = true
       workinchu.layer.cornerRadius = 28
       
       
       dagonrchu.layer.borderColor = UIColor.black.cgColor
       dagonrchu.layer.borderWidth = 2
       dagonrchu.layer.masksToBounds = true
       dagonrchu.layer.cornerRadius = 28
   }

   
   func scetupionnwingui()  {
      fuolinkUr.isUserInteractionEnabled = true
      fuolinkUr.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(juemingzi)))
   }

  @objc func juemingzi()  {
     self.navigationController?.popViewController(animated: true)
   }
    
    
    
    @IBAction func decideResult(_ sender: UIButton) {
        
        
        
    }
    
}
