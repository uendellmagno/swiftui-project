//
//  ClientType.swift
//  YourFlow
//
//  Created by Uendell Magno on 3/23/24.
//

import Foundation


struct ClientInfo: Identifiable {
    let id: Int
    let client_name: String
    let raw_name: String
    let key_account: String
    let ads_manager: String
    let profile_picture: String
    let country: String
    let marketplace: String
    let services: Array<String>
    let cnpj: String
        
}


