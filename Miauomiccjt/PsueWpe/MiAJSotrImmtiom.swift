//
//  MiAJSotrImmtiom.swift
//  Miauomiccjt
//
//  Created by mumu on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class MiAJSotrImmtiom: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celop = tableView.dequeueReusableCell(withIdentifier: "UITableViewCellUIOid", for: indexPath)
        celop.selectionStyle  = .none
        celop.accessoryType = .detailButton
        celop.backgroundColor = .white
        celop.largeContentTitle = ["User Agreement","Pivacy Agreement","Contact us","Star","Clear"][indexPath.row]
        return celop
    }
    

    @IBOutlet weak var ebditChilk: UIButton!
    
    
    @IBOutlet weak var gomiun: UIImageView!
    
    @IBOutlet weak var alipoMineIcon: UIImageView!
    
    
    @IBOutlet weak var aiopMInenamf: UILabel!
    
    @IBOutlet weak var talbemanber: UITableView!
    
    
    
    @IBOutlet weak var louiegnout: UIImageView!
    
    @IBOutlet weak var deloiegnout: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ainsertbnh()
        cmnumunkbkb()
        ebditChilk.addTarget(self, action: #selector(edoupUiseinfo), for: .touchUpInside)
        
    }


    private func cmnumunkbkb()  {
        
        talbemanber.dataSource = self
       
        talbemanber.delegate = self
        talbemanber.separatorStyle = .none
        talbemanber.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCellUIOid")
        talbemanber.rowHeight = 120
        talbemanber.rowHeight = UITableView.automaticDimension
        
       
    }
    func ainsertbnh()  {
        gomiun.isUserInteractionEnabled = true
        gomiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        louiegnout.isUserInteractionEnabled = true
        louiegnout.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        deloiegnout.isUserInteractionEnabled = true
        deloiegnout.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        
      
        
    }
    
    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
        if tgmni.view == gomiun {
            self.navigationController?.popViewController(animated: true)
        }
        
        
        if tgmni.view == louiegnout {
            
        }
        
        if tgmni.view == deloiegnout {
            
        }
        
       
        
        
       
        
    }
    
   @objc func edoupUiseinfo()  {
        
    }

}
