import UIKit
import SnapKit

class PullRequestViewCell: UITableViewCell {
    let identifier = "pull_request_view_cell"
    
    private let containerView = UIView()
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = 4
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.regular16
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return label
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.light12
        return label
    }()
    
    private let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.bold16
        return label
    }()
    
    private let bodyLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.light12
        return label
    }()
    
    private let loadingView = LoadingView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
        containerView.addSubview(profileImageView)
        containerView.addSubview(usernameLabel)
        containerView.addSubview(dateLabel)
        containerView.addSubview(separatorView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(bodyLabel)
        containerView.addSubview(loadingView)
        addSubview(containerView)
    }
    
    private func createViewConstraints() {
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
        
        usernameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(16)
            $0.left.equalTo(profileImageView.snp.right).offset(8)
        }
        
        dateLabel.snp.makeConstraints {
            $0.left.equalTo(usernameLabel.snp.right).offset(4)
            $0.centerY.equalTo(usernameLabel.snp.centerY)
            $0.right.equalToSuperview().inset(16)
        }
        
        separatorView.snp.makeConstraints {
            $0.top.equalTo(usernameLabel.snp.bottom).offset(4)
            $0.left.equalTo(usernameLabel.snp.left)
            $0.right.equalToSuperview().inset(16)
            $0.height.equalTo(1)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(separatorView.snp.bottom).offset(8)
            $0.left.equalTo(profileImageView.snp.right).offset(8)
            $0.right.equalToSuperview().inset(16)
        }
        
        bodyLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom)
            $0.left.equalTo(profileImageView.snp.right).offset(8)
            $0.right.equalToSuperview().inset(16)
            $0.bottom.equalToSuperview().inset(16)
        }
        
        loadingView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func setup(viewModel: PullRequestViewModel) {
        profileImageView.load(url: viewModel.userImage)
        usernameLabel.text = viewModel.username
        dateLabel.text = viewModel.pullRequestDate
        titleLabel.text = viewModel.pullRequestTitle
        bodyLabel.text = viewModel.pullRequestBody
        loadingView.setLoading(false)
    }
}
