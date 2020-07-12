import UIKit

struct PullRequestAdapter {
    func adapt(model: [PullRequest]) -> [PullRequestViewModel] {
        var viewModels = [PullRequestViewModel]()
        for item in model {
            let viewModel = PullRequestViewModel(username: item.user.login,
                                                 userImage: item.user.avatarUrl,
                                                 pullRequestTitle: item.title,
                                                 pullRequestBody: item.body,
                                                 pullRequestDate: getPullRequestDate(date: item.createdAt))
            viewModels.append(viewModel)
        }
        return viewModels
    }
    
    private func getPullRequestDate(date: String) -> String {
        return "Criado em \(DateAdapter().getFormattedDate(date: date, dateFormat: "yyyy-MM-dd'T'HH:mm:ssZ"))"
    }
}
