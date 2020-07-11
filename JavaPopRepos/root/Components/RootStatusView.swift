import UIKit
import SnapKit

class RootStatusView: UIView, ViewCode {
    private let stackView: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .horizontal
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
        show()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy() {
        stackView.addArrangedSubview(iconImageView)
        stackView.addArrangedSubview(valueLabel)
        addSubview(stackView)
    }
    
    func createViewConstraints() {
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func show() {}
}
