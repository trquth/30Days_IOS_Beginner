//
//  AppApi.swift
//  BookmarkLinkManager
//
//  Created by Thien Tran on 9/28/20.
//

import Foundation

enum ParseJSONError : Error {
    case missField
    case emptyData
}

enum ApiErrorError : Error {
    case emptyParams(String)
    case callError
    case fetchFailWithError(String)
}

protocol AppApiDelegate {
    func fetchSuccessData(_ data : Any)
    func fetchFail(_ error: Error)
}

struct AppApi {
    let baseUrl = "https://api.jsonapi.co/rest/v1"
    var delegate : AppApiDelegate?
    
    func login(_ email : String,_ password: String) throws {
        guard !email.isEmpty else {
            throw ApiErrorError.emptyParams("Empty email")
        }
        guard !password.isEmpty else {
            throw ApiErrorError.emptyParams("Empty password")
        }
        
        guard let url = URL(string: baseUrl + "/user/login" ) else {
            throw ApiErrorError.callError;
        }
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let obj : [String : String] = [:]
        guard let httpBody = try? JSONSerialization.data(withJSONObject: obj, options: []) else {
            throw ApiErrorError.callError;
        }
        request.httpBody = httpBody
        request.timeoutInterval = 20
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request){
            data, response, error in
            guard error == nil else {
                delegate?.fetchFail(error!)
                return
            }
            
            if let receivedData = data {
                do {
                    let convertedData = try parseJSON(receivedData)
                    if let message =  convertedData?.error, !message.isEmpty {
                        delegate?.fetchFail(ApiErrorError.fetchFailWithError(message))
                        return 
                    }
                    delegate?.fetchSuccessData(convertedData as Any)
                } catch {
                    delegate?.fetchFail(error)
                }
                return
            }
        }
        task.resume()
    }
    
    func parseJSON(_ data: Data) throws -> UserData? {
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(UserData.self, from: data)
            return decodeData
        } catch  {
            print(error.localizedDescription)
            throw ParseJSONError.missField
        }
    }
}
