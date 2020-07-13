import Foundation
import Alamofire

enum Requests {
    case repositories(String)
    case pullRequests(String, String)
}

class Repository: RepositoryType {
    private func getPath(_ request: Requests) -> String {
        switch request {
        case .repositories(let page):
            return "https://api.github.com/search/repositories?q=language:Java&sort=stars&page=\(page)"
        case .pullRequests(let user, let repo):
            return "https://api.github.com/repos/\(user)/\(repo)/pulls"
        }
    }
    
    func requestRepositories(page: String, completion: @escaping (Result<RepositoriesModel, ErrorCode>) -> Void) {
        AF.request(getPath(.repositories(page))).response { response in
            switch response.result {
            case .success(let data):
                guard let data = data, let object = try? Decoder().decode(RepositoriesModel.self, from: data) else {
                    return
                }
                completion(.success(object))
            case .failure( _):
                completion(.failure(.genericError))
            }
        }
    }
    
    func requestPullRequests(user: String, repository: String, completion: @escaping (Result<[PullRequest], ErrorCode>) -> Void) {
        AF.request(getPath(.pullRequests(user, repository))).response { response in
            switch response.result {
            case .success(let data):
                guard let data = data, let object = try? Decoder().decode([PullRequest].self, from: data) else {
                    return
                }
                completion(.success(object))
            case .failure( _):
                completion(.failure(.genericError))
            }
        }
    }
}
