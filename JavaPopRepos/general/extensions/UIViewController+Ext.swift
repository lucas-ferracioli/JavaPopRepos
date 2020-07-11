import UIKit

extension UIViewController {
    func setNavigationControllerLayout(title: String) {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = title
    }
}
