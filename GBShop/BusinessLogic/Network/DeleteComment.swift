//
//  DeleteComment.swift
//  GBShop
//
//  Created by Артем Тихонов on 06.01.2023.
//

import Foundation
import Alamofire

class DeletingComment: AbstractRequestFactory {
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

extension DeletingComment: DeleteCommentRequestFactory {
    func deleteComment(idComment: String, completionHandler: @escaping (Alamofire.AFDataResponse<AddingCommentEntityResponse>) -> Void) {
        let requestModel = DeleteComment(baseUrl: baseUrl, idComment: idComment)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension DeletingComment {
    struct DeleteComment: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "removeReview.json"
        let idComment: String
        var parameters: Parameters? {
            return [
                "id_comment": idComment
            ]
        }
    }
}
