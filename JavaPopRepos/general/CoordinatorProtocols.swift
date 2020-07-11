import UIKit

protocol CoordinatorType {
    var navigationController: UINavigationController? { get }
    func start()
}
