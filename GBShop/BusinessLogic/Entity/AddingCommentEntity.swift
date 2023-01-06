//
//  AddingCommentEntity.swift
//  GBShop
//
//  Created by Артем Тихонов on 06.01.2023.
//

import Foundation

struct AddingCommentEntityResponse: Codable {
    var result: Int = 0
    var userMessage: String?
    var errorMessage: String?
}




