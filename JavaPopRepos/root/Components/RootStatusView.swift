import UIKit
import SnapKit

class RootStatusView: UIView {
    private let stackView: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.spacing = 2
        return stackview
    }()
    
    private let iconImageView: UIImageView = {
        let imageview = UIImageView()
        return imageview
    }()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.bold16
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
    }
    
    private func setupViewHierarchy() {
        stackView.addArrangedSubview(iconImageView)
        stackView.addArrangedSubview(valueLabel)
        addSubview(stackView)
    }
    
    private func createViewConstraints() {
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func show(icon: UIImage, value: String) {
        iconImageView.image = icon
        valueLabel.text = value
    }
}
