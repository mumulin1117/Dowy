//
//  MIAJSendingImmtion.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit

class MIAJSendingImmtion: UIViewController {
    var gsddBuilding:Array<String> = Array<String>()
    
    @IBOutlet weak var gomiun: UIImageView!
    
    @IBOutlet weak var replopiun: UIImageView!
    
    
    @IBOutlet weak var alipoMineIcon: UIImageView!
    
    
    @IBOutlet weak var aiopMInenamf: UILabel!
    
    
    @IBOutlet weak var callBiudeo: UIImageView!
    
    
    @IBOutlet weak var talbemanber: UITableView!
    
    
    @IBOutlet weak var baozhnesure: UITextField!
    var uiBinh:Dictionary<String,String>
    init(uiBinh: Dictionary<String, String>) {
       
        self.uiBinh = uiBinh
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cmnumunkbkb()
        ainsertbnh()
        gomiun.isUserInteractionEnabled = true
        gomiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
    }
    
    
    
    func ainsertbnh()  {
        replopiun.isUserInteractionEnabled = true
        replopiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        callBiudeo.isUserInteractionEnabled = true
        callBiudeo.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        replopiun.isUserInteractionEnabled = true
        replopiun.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
        
        
        sendignm.isUserInteractionEnabled = true
        sendignm.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mkobduim(tgmni:))))
        
    }
    @objc func mkobduim(tgmni:UITapGestureRecognizer)  {
        if tgmni.view == gomiun {
            self.navigationController?.popViewController(animated: true)
        }
        
        if tgmni.view == replopiun {
            
        }
        
        
        if tgmni.view == callBiudeo {
            
        }
        
        if tgmni.view == sendignm {
            if baozhnesure.text?.isEmpty  == true || baozhnesure.text == nil {
                return
            }
            gsddBuilding.append( baozhnesure.text!)
            talbemanber.reloadData()
            baozhnesure.text = nil
            baozhnesure.resignFirstResponder()
        }
        
    }

    private func cmnumunkbkb()  {
        
        talbemanber.dataSource = self
        baozhnesure.rightView = UIView(frame: CGRect.init(x: 0, y: 0, width: 70, height: 50))
        baozhnesure.rightViewMode = .always
        talbemanber.delegate = self
        talbemanber.separatorStyle = .none
        talbemanber.register(MIAJSendcelkll.self, forCellReuseIdentifier: "MIAJSendcelkllID")
        talbemanber.estimatedRowHeight = 120
        talbemanber.rowHeight = UITableView.automaticDimension
        
       
    }
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var sendignm: UIImageView!
    
}









class  MIAJSendcelkll: UITableViewCell {
    
    let dayGkkm = UILabel.init()
    private lazy var Tiopgiko: UIImageView = {
        let cbnm = UIImageView()
        cbnm.layer.masksToBounds = true
        cbnm.contentMode = .scaleAspectFill
        cbnm.layer.cornerRadius = 25
        
        return cbnm
    }()
   
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let noaiBakvlkg = UIView.init()
        backgroundColor = .clear
        contentView.addSubview(Tiopgiko)
        Tiopgiko.snp.makeConstraints { make in
            make.width.height.equalTo(50)
            make.trailing.equalToSuperview().inset(13)
            make.top.equalToSuperview().offset(3)
        }
        
        
        contentView.addSubview(noaiBakvlkg)
        
        
        contentView.addSubview(dayGkkm)
        
        dayGkkm.numberOfLines = 0
        dayGkkm.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        dayGkkm.textColor = .white
        
        noaiBakvlkg.layer.masksToBounds = true
        noaiBakvlkg.backgroundColor = UIColor(red: 0.74, green: 0.24, blue: 1, alpha: 1)
        noaiBakvlkg.layer.cornerRadius = 12
        
       
        
        dayGkkm.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(13 + 14)
            make.bottom.equalToSuperview().inset(16)
            make.top.equalToSuperview().offset(15 + 50 + 3)
            
            make.width.lessThanOrEqualTo(250)
            make.width.greaterThanOrEqualTo(64)
        }
        
        noaiBakvlkg.snp.makeConstraints { make in
            make.leading.equalTo(dayGkkm.snp.leading).offset(-14)
            make.trailing.equalTo(dayGkkm.snp.trailing).offset(14)
            make.top.equalTo(dayGkkm).offset(-7)
            make.bottom.equalTo(dayGkkm).offset(7)
        }
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



extension MIAJSendingImmtion:UITableViewDelegate,UITableViewDataSource{
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        gsddBuilding.count
    }
    
    
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tabcell = tableView.dequeueReusableCell(withIdentifier: "MIAJSendcelkllID", for: indexPath) as! MIAJSendcelkll
        tabcell.dayGkkm.text = gsddBuilding[indexPath.row]
        return tabcell
    }
}
