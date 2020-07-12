import UIKit
import SnapKit

class PullRequestView: UIView {
    var didRequestAgain: (() -> Void)?
    
    private var viewModels: [PullRequestViewModel] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    private let emptyStateView = EmptyStateView()
    
    private let errorStateView = ErrorStateView()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupTableView()
        setupViewHierarchy()
        createViewConstraints()
        bind()
        emptyStateView.isHidden = true
        errorStateView.isHidden = true
    }
    
    private func setupTableView() {
        tableView.register(PullRequestViewCell.self, forCellReuseIdentifier: PullRequestViewCell().identifier)
        tableView.allowsSelection = false
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setupViewHierarchy() {
        addSubview(tableView)
        addSubview(emptyStateView)
        addSubview(errorStateView)
    }
    
    private func createViewConstraints() {
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        emptyStateView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        errorStateView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func bind() {
        errorStateView.didTryAgain = { [weak self] in
            self?.didRequestAgain?()
            self?.errorStateView.isHidden = true
        }
    }
    
    private func setEmptyView(viewModels: [PullRequestViewModel]) {
        if viewModels.isEmpty {
            emptyStateView.isHidden = false
        }
    }
    
    func show(viewModels: [PullRequestViewModel]) {
        self.viewModels += viewModels
        setEmptyView(viewModels: viewModels)
        errorStateView.isHidden = true
    }
    
    func showError() {
        emptyStateView.isHidden = true
        errorStateView.isHidden = false
    }
}

extension PullRequestView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.isEmpty ? 10 : viewModels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PullRequestViewCell().identifier, for: indexPath) as? PullRequestViewCell
        if !viewModels.isEmpty { cell?.setup(viewModel: viewModels[indexPath.row]) }
        return cell ?? UITableViewCell()
    }
}
