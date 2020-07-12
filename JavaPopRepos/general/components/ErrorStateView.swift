import UIKit

class ErrorStateView: UIView {
    var didTryAgain: (() -> Void)?
    
    private let containerView = UIView()
    
    private let iconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = Images.errorIcon
        return imageview
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.regular16
        label.text = LocalizedStrings.errorDescription
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private let tryAgainButton: UIButton = {
        let button = UIButton()
        button.setTitle(LocalizedStrings.tryAgain, for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupViewHierarchy()
        createViewConstraints()
        addActions()
        backgroundColor = .white
    }
    
    private func setupViewHierarchy() {
        containerView.addSubview(titleLabel)
        containerView.addSubview(iconImageView)
        containerView.addSubview(tryAgainButton)
        addSubview(containerView)
    }
    
    private func createViewConstraints() {
        containerView.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        iconImageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.centerX.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(iconImageView.snp.bottom).offset(8)
            $0.centerX.equalToSuperview()
        }
        
        tryAgainButton.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(8)
            $0.centerX.equalToSuperview()
        }
    }
    
    private func addActions() {
        tryAgainButton.addTarget(self, action: #selector(didTapTryAgainButton), for: .touchUpInside)
    }
    
    @objc func didTapTryAgainButton() {
        didTryAgain?()
    }
}
