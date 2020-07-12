import UIKit

class PullRequestViewController: UIViewController, PullRequestViewControllerType {
    private let contentView: PullRequestView
    private let presenter: PullRequestPresenterType
    
    init(view: PullRequestView = PullRequestView(),
         presenter: PullRequestPresenterType) {
        self.contentView = view
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        setNavigationControllerLayout(title: LocalizedStrings.pullRequests)
        presenter.getPullRequests()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func show(viewModels: [PullRequestViewModel]) {
        contentView.show(viewModels: viewModels)
    }
}
