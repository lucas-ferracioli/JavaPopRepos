import UIKit

class EmptyStateView: UIView {
    private let containerView = UIView()
    
    private let iconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = Images.emptyIcon
        return imageview
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.regular16
        label.text = LocalizedStrings.noData
        label.textAlignment = .center
        label.isAccessibilityElement = true
        return label
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
        backgroundColor = .white
    }
    
    private func setupViewHierarchy() {
        containerView.addSubview(titleLabel)
        containerView.addSubview(iconImageView)
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
            $0.bottom.equalToSuperview()
            $0.centerX.equalToSuperview()
        }
    }
}
