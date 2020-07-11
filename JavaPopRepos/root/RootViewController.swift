import UIKit

class RootViewController: UIViewController, RootViewControllerType {
    private let contentView: RootView
    private let presenter: RootPresenterType
    
    init(view: RootView = RootView(),
         presenter: RootPresenterType) {
        self.contentView = view
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        setNavigationControllerLayout(title: LocalizedStrings.appName)
        presenter.getRepositories()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func show(viewModels: [RootViewModel]) {
        contentView.show(viewModels: viewModels)
    }
}
