//
//  DeleteCommentRequest.swift
//  GBShop
//
//  Created by Артем Тихонов on 06.01.2023.
//

import Foundation
import Alamofire

protocol DeleteCommentRequestFactory {
func deleteComment(idComment: String,
           completionHandler: @escaping (AFDataResponse<AddingCommentEntityResponse>) -> Void)
}
