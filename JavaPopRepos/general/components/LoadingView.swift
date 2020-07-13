import Foundation
import UIKit

class LoadingView: UIView {
    private let loadingView: UIActivityIndicatorView = {
        let loading = UIActivityIndicatorView()
        loading.hidesWhenStopped = true
        loading.style = .medium
        return loading
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupViewHierarchy()
        createViewConstraints()
        backgroundColor = .white
        loadingView.startAnimating()
    }
    
    private func setupViewHierarchy() {
        addSubview(loadingView)
    }
    
    private func createViewConstraints() {
        loadingView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func setLoading(_ isLoading: Bool) {
        isHidden = !isLoading
    }
}
