import UIKit

struct PullRequestAdapter {
    func adapt(model: [PullRequest]) -> [PullRequestViewModel] {
        var viewModels = [PullRequestViewModel]()
        for item in model {
            let viewModel = PullRequestViewModel(username: item.user.login,
                                                 userImage: item.user.avatarUrl,
                                                 pullRequestTitle: item.title,
                                                 pullRequestBody: getPullRequestBody(body: item.body),
                                                 pullRequestDate: getPullRequestDate(date: item.createdAt))
            viewModels.append(viewModel)
        }
        return viewModels
    }
    
    private func getPullRequestBody(body: String) -> String {
        return body.isEmpty ? LocalizedStrings.noBody : body
    }
    
    private func getPullRequestDate(date: String) -> String {
        return "\(LocalizedStrings.createdAt) \(DateAdapter().getFormattedDate(date: date, dateFormat: DateFormat().pullRequestDate))"
    }
}
