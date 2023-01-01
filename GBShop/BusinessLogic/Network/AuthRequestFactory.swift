//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Артем Тихонов on 28.12.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
func login(userName: String,
           password: String,
           completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void)
}
