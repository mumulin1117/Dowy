//
//  MIAJAgonSgkol.swift
//  Miauomiccjt
//
//  Created by Miauomiccjt on 2025/3/18.
//  Copyright © 2025 MIAJ. All rights reserved.
//

import UIKit
import Alamofire
import SVProgressHUD
class MIAJAgonSgkol: NSObject {
    
    // MARK: - 舞台全局配置
    static let sgKOL = MIAJAgonSgkol()
    
    #if DEBUG
    let dowuningAAPPID = "11111111"
    #else
    let dowuningAAPPID = "66933920"
    #endif
    
    // MARK: - 主舞台表演
    func reamialFirInstageDSall(_ performanceScript: String,
                                      stageIntProps: [String: Any],
                                      VloClaomc: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }) {
        let stageGateway = generateStageGateway()
        guard let performanceURL = constructStageURL(script: performanceScript, gateway: stageGateway) else { return }
        
        let stageCredentials = generateStageCredentials()
        let audienceToken = UserDefaults.standard.string(forKey: "femuserlogidectoken") ?? ""
        
        sendStageRequest(
            url: performanceURL,
            props: stageIntProps,
            credentials: stageCredentials,
            audienceToken: audienceToken
        ) { [weak self] response in
            self?.handleAudienceResponse(
                response,
                performanceScript: performanceScript,
                completion: VloClaomc
            )
        }
    }
}

// MARK: - 舞台搭建组件
private extension MIAJAgonSgkol {
    /// 生成舞台入口
    func generateStageGateway() -> String {
        #if DEBUG
        return "https://api.cphub.link"
        #else
        return "https://api.rnmykmn.link"
        #endif
    }
    
    /// 构建表演URL
    func constructStageURL(script: String, gateway: String) -> URL? {
        URL(string: gateway + script)
    }
    
    /// 准备舞台凭证
    func generateStageCredentials() -> [String] {
        "appId?????appVersion?????deviceNo?????language?????loginToken?????Content-Type?????application/json?????CFBundleShortVersionString"
            .components(separatedBy: "?????")
    }
}

// MARK: - 演出请求管理
private extension MIAJAgonSgkol {
    func sendStageRequest(url: URL,
                         props: [String: Any],
                         credentials: [String],
                         audienceToken: String,
                         completion: @escaping (AFDataResponse<Any>) -> Void) {
        AF.request(
            url,
            method: .post,
            parameters: props,
            encoding: JSONEncoding.default,
            headers: [
                credentials[0]: dowuningAAPPID,
                credentials[1]: Bundle.main.object(forInfoDictionaryKey: credentials[7]) as? String ?? "1.1",
                credentials[2]: AppDelegate.uuidGeting(),
                credentials[3]: Locale.current.languageCode ?? "",
                credentials[4]: audienceToken,
                credentials[5]: credentials[6]
            ]
        ).responseJSON(completionHandler: completion)
    }
}

// MARK: - 观众反馈处理
private extension MIAJAgonSgkol {
    func handleAudienceResponse(_ response: AFDataResponse<Any>,
                               performanceScript: String,
                               completion: @escaping (Result<[String: Any]?, Error>) -> Void) {
        switch response.result {
        case .success(let rawResponse):
            processBackstageFeedback(
                rawResponse,
                performanceScript: performanceScript,
                completion: completion
            )
        case .failure(let error):
            completion(.failure(error))
        }
    }
    
    func processBackstageFeedback(_ feedback: Any,
                                 performanceScript: String,
                                 completion: @escaping (Result<[String: Any]?, Error>) -> Void) {
        
        guard let backstageReport = feedback as? [String: Any] else {
            let error = NSError(domain: "HTTPError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Data is error"])
            return completion(.failure(error))
        }
        
        #if DEBUG
        displayBackstageDebugInfo(report: backstageReport, script: performanceScript)
        #endif
        
        guard let statusCode = backstageReport["code"] as? String,
              statusCode == "0000" else {
            handleBackstageError(report: backstageReport, completion: completion)
            return
        }
        
        let performanceResult = backstageReport["result"] as? [String: Any]
        completion(.success(performanceResult))
    }
    
    func handleBackstageError(report: [String: Any],
                             
                             completion: @escaping (Result<[String: Any]?, Error>) -> Void) {
        let errorMessage = report["message"] as? String ?? "data is error"
        let error = NSError(domain: "HTTPError", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
        completion(.failure(error))
    }
}

// MARK: - 后台调试工具
private extension MIAJAgonSgkol {
    #if DEBUG
    func displayBackstageDebugInfo(report: [String: Any], script: String) {
        print("🎭 舞台日志 =====")
        print(report)
        
        guard script == "/stahuge/clips/community/actas" || script == "/api/index/v2/getDf" else { return }
        
        let debugReport = formatBackstageReport(report)
        SVProgressHUD.showProgress(0.5, status: debugReport)
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            SVProgressHUD.dismiss()
        }
    }
    
    func formatBackstageReport(_ dictionary: [String: Any]) -> String {
        dictionary.map { "\($0.key): \($0.value)" }.joined(separator: "\n")
    }
    #endif
}
