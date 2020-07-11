import UIKit
import SnapKit

class RootViewCell: UITableViewCell, ViewCode {
    static let identifier = "root_view_cell"
    
    private let containerView = UIView()
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = 4
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let authorNameLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.regular16
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.light12
        return label
    }()
    
    private let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    private let repoLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.bold20
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.light12
        return label
    }()
    
    private let forksView = RootStatusView()
    
    private let starsView = RootStatusView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy() {
        containerView.addSubview(profileImageView)
        containerView.addSubview(authorNameLabel)
        containerView.addSubview(usernameLabel)
        containerView.addSubview(separatorView)
        containerView.addSubview(repoLabel)
        containerView.addSubview(descriptionLabel)
        containerView.addSubview(forksView)
        containerView.addSubview(starsView)
        addSubview(containerView)
    }
    
    func createViewConstraints() {
        containerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        profileImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(16)
            $0.left.equalToSuperview().offset(16)
            $0.bottom.equalToSuperview().inset(16)
            $0.width.equalTo(70)
            $0.height.equalTo(100)
        }
        
        authorNameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(16)
            $0.left.equalTo(profileImageView.snp.right).offset(8)
        }
        
        usernameLabel.snp.makeConstraints {
            $0.left.equalTo(authorNameLabel.snp.right).offset(4)
            $0.centerY.equalTo(authorNameLabel.snp.centerY)
            $0.right.equalToSuperview().inset(16)
        }
        
        separatorView.snp.makeConstraints {
            $0.top.equalTo(authorNameLabel.snp.bottom).offset(4)
            $0.left.equalTo(authorNameLabel.snp.left)
            $0.right.equalToSuperview().inset(16)
            $0.height.equalTo(1)
        }
        
        repoLabel.snp.makeConstraints {
            $0.top.equalTo(separatorView.snp.bottom).offset(8)
            $0.left.equalTo(profileImageView.snp.right).offset(8)
            $0.right.equalToSuperview().inset(16)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.top.equalTo(repoLabel.snp.bottom)
            $0.left.equalTo(profileImageView.snp.right).offset(8)
            $0.right.equalToSuperview().inset(16)
        }
        
        starsView.snp.makeConstraints {
            $0.top.equalTo(descriptionLabel.snp.bottom).offset(8)
            $0.bottom.equalToSuperview().inset(16)
            $0.right.equalToSuperview().inset(16)
        }
        
        forksView.snp.makeConstraints {
            $0.top.equalTo(starsView.snp.top)
            $0.bottom.equalToSuperview().inset(16)
            $0.right.equalTo(starsView.snp.left).inset(-4)
        }
    }
}
