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
                                          numberOfStars: getNumberOfStars(stars: item.stargazersCount),
                                          accessibilityForksLabel: getAccessibilityForksLabel(forks: item.forksCount),
                                          accessibilityStarsLabel: getAccessibilityStarsLabel(stars: item.stargazersCount))
            viewModels.append(viewModel)
        }
        return viewModels
    }
    
    private func getRepositoryDescription(description: String) -> String {
        return description.isEmpty ? LocalizedStrings.noDescription : description
    }
    
    private func getNumberOfForks(forks: Double) -> String {
        return forks.getFormatted()
    }
    
    private func getNumberOfStars(stars: Double) -> String {
        return stars.getFormatted()
    }
    
    private func getAccessibilityForksLabel(forks: Double) -> String {
        return "\(LocalizedStrings.numberOfForks) \(Int(forks))"
    }
    
    private func getAccessibilityStarsLabel(stars: Double) -> String {
        "\(LocalizedStrings.numberOfStars) \(Int(stars))"
    }
}
