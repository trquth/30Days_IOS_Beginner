//
//  UserData.swift
//  BookmarkLinkManager
//
//  Created by Thien Tran on 9/28/20.
//

import Foundation

struct Token : Codable {
    let token : String
}

struct UserData : Codable {
    let success : Bool
    let error : String?
    let data : Token?
}
