import UIKit

struct RootAdapter {
    func adapt(model: RepositoriesModel) -> [RootViewModel] {
        var viewModels = [RootViewModel]()
        for item in model.items {
            let viewModel = RootViewModel(username: item.owner.login,
                                          userImage: item.owner.avatarUrl,
                                          userType: item.owner.type,
                                          repositoryName: item.name,
                                          repositoryDescription: getRepositoryDescription(description: item.description),
                                          numberOfForks: getNumberOfForks(forks: item.forksCount),
                                          numberOfStars: getNumberOfStars(stars: item.stargazersCount))
            viewModels.append(viewModel)
        }
        return viewModels
    }
    
    private func getRepositoryDescription(description: String) -> String {
        return description.isEmpty ? LocalizedStrings.noDescription : description
    }
    
    private func getNumberOfForks(forks: Int) -> String {
        return forks.getFormatted()
    }
    
    private func getNumberOfStars(stars: Int) -> String {
        return stars.getFormatted()
    }
}
