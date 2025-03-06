//
//  MiAJACPiReslit.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import SVProgressHUD
enum MiAJSuguesstionType:String {

    case TVroles = "TV roles"
    case Singer = "Singer"
    case  Anime = "Anime"
    case Vintage = "Vintage"
    case FairyTale = "Fairy Tale"
}
import Alamofire
import SVProgressHUD
class MiAJACPiReslit: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 禁用原生边缘返回手势
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }
       
      
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // 恢复其他控制器的返回手势
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    

    @IBOutlet weak var resuiltingBug: UITextView!
    var SuguesstionType :MiAJSuguesstionType
    var roleplayDesc:String
    
    init(SuguesstionType: MiAJSuguesstionType, roleplayDesc: String) {
        self.SuguesstionType = SuguesstionType
        self.roleplayDesc = roleplayDesc
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        dauiopBa()
        gbunsdg()
        resuiltingBug.isEditable = false
        
    }
    
    
    
    
    private func dauiopBa() {
        resuiltingBug.layer.cornerRadius = 15
        resuiltingBug.contentInset = UIEdgeInsets.init(top: 30, left: 15, bottom: 85, right: 15)
        resuiltingBug.layer.masksToBounds = true
    }

    func gbunsdg() {
        let allQuestion = "I need you as an AI creative inspiration type robot. My type of inspiration is " + SuguesstionType.rawValue + ",and my description is:" + roleplayDesc + ".Please give me some cosplay inspiration based on the above"
        
        SVProgressHUD.show(withStatus: "Generating creative ideas.....")
    
            AF.request("http://www.wertyu6543z.xyz/talktwo/askQuestionv2", method: .post, parameters: ["question": allQuestion,"questionType": 1,"eqNo":"5555"], encoding: JSONEncoding.default, headers: nil)
                .responseJSON { response in
                    SVProgressHUD.dismiss()
                    switch response.result {
                    case .success(let value):
                        if let json = value as? [String: Any] {
                            guard let content = json["data"] as? String else {
                                
                                SVProgressHUD.showInfo(withStatus: "Data error")
                                return
                            }
                           
                            self.resuiltingBug.text = content
                            return
                           
                        }
                      
                        SVProgressHUD.showInfo(withStatus: "Data error")
                    case .failure(let error):
                        SVProgressHUD.showInfo(withStatus: "Data error")

                    }
                    
                }
          
       
    }


    
    @IBAction func Quiocxerymui(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    
    @IBAction func aGopdgerAlert(_ sender: UIButton) {
        self.aGopdgerAlert(withihTITLe: "Report AI Content",resonsongall: ["Inappropriate Content","False Information","Copyright Issue","Other Reason"])

    }
    
    
    
    
}
