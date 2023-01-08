//
//  AddingComment.swift
//  GBShop
//
//  Created by Артем Тихонов on 06.01.2023.
//

import Foundation
import Alamofire

class AddingComment: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")!
    init(errorParser: AbstractErrorParser,
         sessionManager: Session,
         queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

extension AddingComment: AdiingCommentRequestFactory {
    func addComment(userName: String, text: String, completionHandler: @escaping (Alamofire.AFDataResponse<AddingCommentEntityResponse>) -> Void) {
        let requestModel = AddComment(baseUrl: baseUrl, user: userName, text: text)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension AddingComment {
    struct AddComment: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "addReview.json"
        let user: String
        let text: String
        var parameters: Parameters? {
            return [
                "id_user": user, "text": text
            ]
        }
    }
}
