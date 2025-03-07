//
//  BucueCarstarTruber.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/2/28.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import ActiveLabel
import SVProgressHUD
class BucueCarstarTruber: UIViewController {
   
   private var agreenAready:Int = 0
   

   @IBOutlet weak var indicaterAgree: UIImageView!
   
   
   @IBOutlet weak var shuldAJ: UIImageView!
   
   
   @IBOutlet weak var toemailLablMAKl: UILabel!
   @IBOutlet weak var toeEamillMAKl: UIImageView!
   
   
    private var lerbelBottom: ActiveLabel =  ActiveLabel.init()
   
    var shioldPre:Bool = false
    
   override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      
      indicaterAgree.image = UIImage(named: (agreenAready == 1) ? "xzdys" : "mxzdys")
      
       if shioldPre == false && agreenAready == 0 {
           ElaiolErbian()
           shioldPre = true
       }
       
   }
   
   override func viewDidLoad() {
        super.viewDidLoad()

      shuldAJ.isUserInteractionEnabled = true
      shuldAJ.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(tapclivktouxck(tapMal:))))
      indicaterAgree.isUserInteractionEnabled = true
      indicaterAgree.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(tapclivktouxck(tapMal:))))
      
      
      toemailLablMAKl.isUserInteractionEnabled = true
      toemailLablMAKl.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(tapclivktouxck(tapMal:))))
      
      toeEamillMAKl.isUserInteractionEnabled = true
      toeEamillMAKl.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(tapclivktouxck(tapMal:))))
     
       toemailLablMAKl.layer.cornerRadius = 28
       toemailLablMAKl.layer.masksToBounds = true
       
       lerbelBottom.numberOfLines = 0
       lerbelBottom.textColor = .lightGray
       view.addSubview(self.lerbelBottom)
       lerbelBottom.snp.makeConstraints { make in
           make.left.equalTo(indicaterAgree.snp.right).offset(8)
           make.right.equalToSuperview().inset(20)
           make.top.equalTo(indicaterAgree)
       }
       
       addNoerbuiol()
    }
   
   func addNoerbuiol()  {
       lerbelBottom.isUserInteractionEnabled = true
       lerbelBottom.font = UIFont.systemFont(ofSize: 13, weight: .medium)
       
      let customTypeTErm = ActiveType.custom(pattern: "\\bTerms of Service\\b")
      let customTypePri = ActiveType.custom(pattern: "\\bPrivacy Policy\\b")
      lerbelBottom.enabledTypes = [customTypeTErm,customTypePri]
       lerbelBottom.customColor = [customTypeTErm:.white,customTypePri:.white]
       
       lerbelBottom.text = "Logging in represents your agreement to  the Terms of Service and Privacy Policy."
      lerbelBottom.handleCustomTap(for: customTypeTErm) { element in
         let eluaijg = BucueEluaiTruber.init()
          eluaijg.shoingindicatoer.text = BucueCarstarTruber.showirResturnContenu(which: 1)
         eluaijg.modalPresentationStyle = .overCurrentContext
         self.present(eluaijg, animated: true)
      }
      lerbelBottom.handleCustomTap(for: customTypePri) { element in
         let eluaijg = BucueEluaiTruber.init()
          eluaijg.shoingindicatoer.text = BucueCarstarTruber.showirResturnContenu(which: 2)
         eluaijg.modalPresentationStyle = .overCurrentContext
         self.present(eluaijg, animated: true)
      }
      
   }

   
    func ElaiolErbian()  {
        //ELUA
        let eluaijg = BucueEluaiTruber.init()
         eluaijg.shoingindicatoer.text = BucueCarstarTruber.showirResturnContenu(which: 0)
         eluaijg.bloakMIAJ = { iug in
             self.agreenAready = iug ? 1 : 0
             self.indicaterAgree.image = UIImage(named: iug ? "xzdys" : "mxzdys")
         }
         
         
        eluaijg.modalPresentationStyle = .overCurrentContext
        self.present(eluaijg, animated: true)
    }
   
   
   @objc func tapclivktouxck(tapMal:UITapGestureRecognizer) {
      
      let tapview = tapMal.view
      if tapview ==  shuldAJ {
          ElaiolErbian()
      }
      
    
      
      if tapview ==  indicaterAgree{
         //agree
         agreenAready = ((agreenAready == 1) ? 0 : 1)
         indicaterAgree.image = UIImage(named: (agreenAready == 1) ? "xzdys" : "mxzdys")
      }
      
      
      if tapview ==  toeEamillMAKl || tapview == toemailLablMAKl {
         //EMail
          let slioDouble = "Aigfrueheg qtxou k dtqhxek vTbepremksv xofff tSfenrkvmifcnec yafntdu zPnrrikvqapcwyd qPpozlvifcpyc kfwinrzsftg!"
          let wgoMIAJ5 =  self.restobuingd(Cubecm:slioDouble)
          if agreenAready == 0 {
              SVProgressHUD.showInfo(withStatus: wgoMIAJ5)
              return
              
          }
          self.navigationController?.pushViewController(BucuepuerjnhTruber.init(), animated: true)
      }
       
      
   }
   
   
   
   
  class func showirResturnContenu(which:Int) -> String {
      if which == 0 {
         return """
EULA

Effective Date: February 28, 2025
Latest Update: February 28, 2025

1. License Grant

You are granted a non-exclusive, non-transferable, limited license to use the Dowy application solely for:

Creating and sharing original imitation performance videos (with all necessary copyright permissions).
Generating non-commercial creative content via AI-powered inspiration tools.
Participating in community interactions (comments, follows, direct messages).
Prohibited uses include: Commercial training, political campaigns, or automated content generation.

2. Content Ownership & Licensing

2.1 User-Generated Content

You retain ownership of uploaded content but grant Dowy:
A worldwide, royalty-free license to distribute, adapt, and analyze content for AI training and recommendations.
The right to remove or modify content violating community guidelines.
Imitation Content Requirements:
Clearly credit the original work’s title and copyright holder.
Avoid defamatory interpretations of original works.
Automatic disclaimer watermark added unless "officially authorized" is declared.
2.2 Platform Content

AI-generated creative suggestions are the exclusive property of Dowy.
User interaction data (e.g., engagement metrics) will optimize recommendation algorithms.
3. Community Safety & Moderation 🌟

3.1 Three-Tier Content Moderation

AI Pre-Screening: Real-time scans for:
Hate symbols (per UNESCO definitions).
Nudity/violence (auto-block if >10% screen coverage).
Text/audio slurs (including variant spellings).
Human Review: Controversial content reviewed by a multicultural team within 6 hours.
User Tools:
Long-press content to trigger "Report-Block-Ban" actions.
Three valid reports activate "Emergency Content Freeze".
3.2 Escalating Enforcement

Violation Type   Penalty   Appeal Window
Minor (vulgar language)   Content removal + 7-day mute   48 hours
Moderate (harassment)   30-day account ban + device ID logging   72 hours
Severe (child exploitation/hate crimes)   Permanent ban + legal reporting   Non-appealable
3.3 Creator Protection Program

Enabling "Creator Mode" allows:

Auto-filtering of comments with abusive keywords.
Limiting DMs from non-followers.
Bulk deletion of interactions from flagged accounts.
4. Data & Privacy

Facial/voice data is used solely for imitation enhancements and anonymized immediately after processing.
User blocklists sync across devices and remain inaccessible to Dowy.
All moderation records are encrypted and stored for 180 days for audits.
5. Disclaimers

Dowy is not liable for:

Copyright disputes arising from imitation content (users must secure rights).
Cultural biases in AI-generated suggestions.
Third-party redistribution of content via screen recording or external platforms.
6. Termination

Dowy may terminate access immediately without refunding virtual assets if you:

Falsify copyright permissions.
Create deepfakes using AI tools.
Trigger 3+ moderate violations on the same device.
7. Compliance & Jurisdiction

Governed by laws of California, USA.
Report copyright issues per DMCA to copyright@dowy.com.
Data practices comply with GDPR (EU) and COPPA (users under 13 prohibited).
Key Enhancements:

Copyright Safeguards: Mandatory credits for imitation content to mitigate legal risks.
Global Moderation Standards: Align hate speech definitions with UNESCO and EU frameworks.
Transparent Escalation: Clear penalty tiers and audit-ready moderation logs.
Next Steps for Compliance:

Integrate a copyright declaration pop-up during uploads.
Add floating watermarks to AI-generated content: "This suggestion does not reflect Dowy’s views."
Establish a Content Oversight Board with user representatives.
Contact:
Dowy LLC
Registered Address: [Insert Your Business Address]
Legal Inquiries: legal@dowy.com

By using Dowy, you agree to empower creativity while respecting artistic integrity and community safety. 🎭✨
"""
      }
      
      if which == 1 {
         return """
Dowy Terms of Service

Effective Date: February 28, 2025

1. Acceptance of Terms

By using Dowy, you agree to:

Comply with all community guidelines and copyright laws.
Assume full liability for uploaded content.

2. Account Management

2.1 Requirements

Use a valid email and unique username (no impersonation).
Maintain account security; report breaches immediately.

2.2 Termination
We may suspend accounts for:

Posting illegal content (e.g., deepfakes).
Evading bans via multiple accounts.

3. Content Rules

3.1 Prohibited Content

Imitation Videos: Must credit original creators and avoid defamation.
AI Content: Label AI-generated clips with #AICreated hashtag.

3.2 Licensing
You grant Dowy a non-exclusive license to display, modify, and distribute your content.

4. Disputes & Liability

Governing Law: Disputes resolved under California law.
Class Action Waiver: Claims must be filed individually.

5. Modifications

We may update these terms with 30 days’ notice via email or in-app banner.

Full Terms: [Link to Detailed Terms of Service]

Key Integration Points:

Cross-Referencing: Privacy Policy §3 links to EULA’s moderation system details.
AI Transparency: Explicitly state how imitation data trains algorithms (Privacy §2).
Global Compliance:
GDPR: Right to erasure (Privacy §4).
CCPA: “Do Not Sell” button in California user profiles.
Recommended Actions:

Add a cookie consent banner for EU users.
Implement age-gating during signup (e.g., birthdate verification).
Publish a Transparency Report biannually detailing content removals.
"""
      }
      
      
      return """
Privacy Policy for Dowy

Effective Date: February 28, 2025
Latest Update: February 28, 2025

1. Data We Collect

1.1 User-Provided Information

Account Data: Username, email, profile bio, and social media links (optional).
Content: Videos, comments, voice recordings, and AI-generated inspiration prompts.
Verification Data: Facial scans (for imitation effects) and device fingerprints (for security).

1.2 Automatically Collected Data

Usage Data: Watch history, engagement metrics (likes/shares), and in-app search queries.
Technical Data: IP address, device model, OS version, and crash logs.
Location Data: Approximate location derived from IP (non-precise).

1.3 Third-Party Data

Social Media: If you link accounts (e.g., Instagram), we collect public profile information.
Analytics: Aggregated data via Firebase and Mixpanel.

2. How We Use Data

Core Functionality: Deliver imitation tools, AI suggestions, and personalized recommendations.
Safety & Moderation: Scan content for policy violations using automated systems.
Improvements: Train AI models (anonymized data only) and optimize server performance.
Legal Compliance: Respond to law enforcement requests and copyright claims.
3. Data Sharing

We never sell your data. Limited sharing occurs with:

Moderation Partners: Third-party AI filters (e.g., Google Perspective API) to detect hate speech.
Cloud Services: AWS for encrypted storage.
Legal Authorities: When required by subpoena or to prevent harm.

4. Your Rights

Access & Portability: Download your videos and interaction history via Settings > Privacy.
Deletion: Permanently erase your account and data (7-day processing time).
Opt-Out: Disable AI training contributions in Settings > Data Preferences.

5. Children’s Privacy

Dowy is strictly for users aged 13+. Accounts suspected of underage use will be terminated.

6. Security Measures

End-to-end encryption for direct messages.
Annual penetration testing and ISO 27001 certification.
"""
      
   }

}
