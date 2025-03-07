//
//  MIAJPubImmtion.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/3.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import SVProgressHUD
import Photos
class MIAJPubImmtion: UIViewController ,UITextViewDelegate, UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let videoURL = info[.mediaURL] as? URL else {
                   return
               }
        
        getVideoThumbnail(videoURL: videoURL) { thumbnail in
                   
            // 在主线程中更新 UI
            DispatchQueue.main.async {
                picker.dismiss(animated: true)
                if let thumbnailImage = thumbnail {
                    self.reakUp.setBackgroundImage(thumbnailImage, for: .normal)
                    self.deleteReloadNu.isHidden = false
                    self.reakUp.setImage(UIImage.init(named: "biolplo"), for: .normal)
                    self.ifUploadinged = true
                }
            }
        }
        
    }
    @IBOutlet weak var pubyou: UIImageView!
    
    @IBOutlet weak var pingkaLayer: UIView!
    private func getVideoThumbnail(videoURL: URL, completion: @escaping (UIImage?) -> Void) {
        let asset = AVAsset(url: videoURL)
        let imageGenerator = AVAssetImageGenerator(asset: asset)
        imageGenerator.appliesPreferredTrackTransform = true
        
        let time = CMTime(seconds: 0, preferredTimescale: 600) // 获取视频的第一帧
        
        imageGenerator.generateCGImagesAsynchronously(forTimes: [NSValue(time: time)]) { _, image, _, result, error in
            if let error = error {
                print("获取封面图错误: \(error.localizedDescription)")
                completion(nil)
                return
            }
            
            if let image = image {
                let thumbnail = UIImage(cgImage: image)
                completion(thumbnail)
            } else {
                completion(nil)
            }
        }
        
    }
    
    
    var ifUploadinged:Bool = false
    
    @IBOutlet weak var deleteReloadNu: UIButton!
    
    var typrTag:Int = 0
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if typrTag == 0 {
            typeViddeotMIAJ.text = "Upload Regular Video"
            retkBack.image = UIImage(named: "menbaugnormlussse")
            let origFram = whoareyouenter.frame
            
            whoareyouenter.snp.makeConstraints({ make in
                make.leading.right.equalToSuperview().inset(15)
                make.top.equalTo(self.pingkaLayer.snp.top).offset(18)
                make.height.equalTo(0)
            })
        }
    }
    
    @IBOutlet weak var retkBack: UIImageView!
    
    @IBOutlet weak var typeViddeotMIAJ: UILabel!
    
    
    @IBOutlet weak var mindenter: UITextView!
    
    @IBOutlet weak var whoareyouenter: UITextField!
    
    
    @IBOutlet weak var reakUp: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reakUp.layer.cornerRadius  = 15
        reakUp.layer.masksToBounds = true
        fixAllUIfl()
        pubyou.isUserInteractionEnabled = true
        pubyou.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(trnbanoing)))
    }
    @objc func trnbanoing()  {
        self.navigationController?.popViewController(animated: true)
    }

    
    func fixAllUIfl() {
        pingkaLayer.layer.cornerRadius = 15
        pingkaLayer.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        whoareyouenter.layer.masksToBounds = true
        mindenter.layer.masksToBounds = true
        
        whoareyouenter.layer.cornerRadius = 15
        mindenter.layer.cornerRadius = 15
        mindenter.delegate = self
        mindenter.contentInset = UIEdgeInsets(top: 20, left: 18, bottom: 8, right: 18)
    }

    

    
    @IBAction func finnalyMIAG(_ sender: Any) {
        if typrTag == 1 {
            let sdfer = "Phlzejausuel meinvtqehru cWyhwoz sazrden ryhoxud ciomwibtsaztyianlgq!"
            let OkseeMIAJ1 =  self.restobuingd(Cubecm:sdfer)
            guard let imitaion = whoareyouenter.text,imitaion.isEmpty == false else {
                SVProgressHUD.showInfo(withStatus: OkseeMIAJ1)
                return
            }
        }
       
        
        
        guard let mind = mindenter.text,mind.isEmpty == false,mind != "🤔 What's on your mind?" else {
            let sdfer = "Pmlteyaascep weunsthexrf vWfhmactg'hsr oohnv fyrosunri jmoiwnkdk!"
            let OkseeMIAJ1 =  self.restobuingd(Cubecm:sdfer)
            SVProgressHUD.showInfo(withStatus: OkseeMIAJ1)
            return
        }
        
        let sdferwe = "Palmesarsbeh guppultolaedj vyvokufrq cvnipdfexox!"
        let OkseeMIAJ1 =  self.restobuingd(Cubecm:sdferwe)
        guard self.ifUploadinged else {
            SVProgressHUD.showInfo(withStatus: OkseeMIAJ1)
            return
        }
        
        
        let sdferwloadinge = "ukpbloooardriynxgd.n.o.c.b."
        let OkseeMIAJ2 =  self.restobuingd(Cubecm:sdferwloadinge)
        
        SVProgressHUD.show(withStatus: OkseeMIAJ2)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: DispatchWorkItem(block: {
            let sdferwloadinge1 = "Ucpblrokaldw xsvugcccnegsxskfouklq,d vtbhved vvsiudweyou owniklxli cbiet wdxilsapllwacypepdb navfvtjexrs groewvpiqefwq!"
            let OkseeMIAJ3 =  self.restobuingd(Cubecm:sdferwloadinge1)
            
            SVProgressHUD.showSuccess(withStatus: OkseeMIAJ3)
            self.navigationController?.popViewController(animated: true)
        }))
        
        
        
    }
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
        
    }
    
    
    @IBAction func uploadingvirdeoFinnal(_ sender: UIButton) {
        
        self.requestPhotoLibraryPermission { granted in
            DispatchQueue.main.async(execute: DispatchWorkItem(block: {
                if granted{
                    let imagePickerController = UIImagePickerController()
                           
                    imagePickerController.sourceType = .photoLibrary
                    imagePickerController.mediaTypes = ["public.movie"]
                    imagePickerController.delegate = self
                    self.present(imagePickerController, animated: true)
                    return
                }
                let sdferwloadinge1 = "Pmhvoqtxot kleiubhrualryyb yawcicieksrsn wdxebnbipexd"
                let OkseeMIAJ3 =  self.restobuingd(Cubecm:sdferwloadinge1)
               
                SVProgressHUD.showInfo(withStatus: OkseeMIAJ3)
            }))
           
        }
        
        
        
    }
    
    
    
    @IBAction func reupNionh(_ sender: Any) {
        self.ifUploadinged = false
        self.reakUp.setImage(nil, for: .normal)
        self.reakUp.setBackgroundImage(UIImage(named: "Muonkert_vio"), for: .normal)
        deleteReloadNu.isHidden = true
    }
    
    
    func requestPhotoLibraryPermission(completion: @escaping (_ granted: Bool) -> Void) {
            switch PHPhotoLibrary.authorizationStatus() {
            case .authorized:
               
                completion(true)
                
            case .notDetermined:
              
                PHPhotoLibrary.requestAuthorization { status in
                    if status == .authorized {
                        completion(true)
                    } else {
                        completion(false)
                    }
                }
                
            case .denied, .restricted:
              
                completion(false)
                
            case .limited:
                completion(true)
            @unknown default:
             
                completion(false)
            }
        }
    
}
