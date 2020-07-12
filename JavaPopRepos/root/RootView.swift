import UIKit
import SnapKit

class RootView: UIView {
    var didRequestAgain: (() -> Void)?
    var didRequestNextPage: (() -> Void)?
    var didSelectRow: ((_ viewModel: RootViewModel) -> Void)?
    
    private var viewModels: [RootViewModel] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    private let tableView =  UITableView()
    
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
        errorStateView.isHidden = true
    }
    
    private func setupTableView() {
        tableView.register(RootViewCell.self, forCellReuseIdentifier: RootViewCell().identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.prefetchDataSource = self
    }
    
    private func setupViewHierarchy() {
        addSubview(tableView)
        addSubview(errorStateView)
    }
    
    private func createViewConstraints() {
        tableView.snp.makeConstraints {
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
    
    func show(viewModels: [RootViewModel]) {
        self.viewModels += viewModels
        errorStateView.isHidden = true
    }
    
    func showError() {
        errorStateView.isHidden = false
    }
}

extension RootView: UITableViewDelegate, UITableViewDataSource, UITableViewDataSourcePrefetching {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.isEmpty ? 10 : viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RootViewCell().identifier, for: indexPath) as? RootViewCell
        cell?.selectedBackgroundView = UIView()
        if !viewModels.isEmpty { cell?.setup(viewModel: viewModels[indexPath.row]) }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didSelectRow?(viewModels[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath]) {
        if indexPaths.contains(where: isLastCell(for:)) {
            didRequestNextPage?()
        }
    }
    
    private func isLastCell(for indexPath: IndexPath) -> Bool {
        let count = viewModels.count
        return indexPath.row >= count - 1
    }
}
