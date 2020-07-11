import Foundation
import Alamofire

enum Requests {
    case repositories(String)
    case pullRequests
}

class Repository: RepositoryType {
    private func getPath(_ request: Requests) -> String {
        switch request {
        case .repositories(let page):
            return "https://api.github.com/search/repositories?q=language:Java&sort=stars&page=\(page)"
        case .pullRequests:
            return ""
        }
    }
    
    func requestRepositories(page: String, completion: @escaping (Result<RepositoriesModel, Error>) -> Void) {
        AF.request(getPath(.repositories(page))).response { response in
            switch response.result {
            case .success(let data):
                guard let data = data, let object = try? Decoder().decode(RepositoriesModel.self, from: data) else {
                    return
                }
                completion(.success(object))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
