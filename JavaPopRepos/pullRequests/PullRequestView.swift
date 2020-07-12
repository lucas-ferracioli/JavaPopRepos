import UIKit
import SnapKit

class PullRequestView: UIView {
    private var viewModels: [PullRequestViewModel] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
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
    }
    
    private func setupTableView() {
        tableView.register(PullRequestViewCell.self, forCellReuseIdentifier: PullRequestViewCell().identifier)
        tableView.allowsSelection = false
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setupViewHierarchy() {
        addSubview(tableView)
    }
    
    private func createViewConstraints() {
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func show(viewModels: [PullRequestViewModel]) {
        self.viewModels += viewModels
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
