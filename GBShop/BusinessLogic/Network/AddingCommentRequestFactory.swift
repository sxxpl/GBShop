//
//  AddingCommentRequestFactory.swift
//  GBShop
//
//  Created by Артем Тихонов on 06.01.2023.
//

import Foundation
import Alamofire

protocol AdiingCommentRequestFactory {
func addComment(userName: String,
           text: String,
           completionHandler: @escaping (AFDataResponse<AddingCommentEntityResponse>) -> Void)
}
