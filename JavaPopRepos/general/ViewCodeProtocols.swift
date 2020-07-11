protocol ViewCode {
    func setupViewHierarchy()
    func createViewConstraints()
}

extension ViewCode {
    func setupView() {
        setupViewHierarchy()
        createViewConstraints()
    }
}
