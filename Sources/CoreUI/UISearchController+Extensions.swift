import UIKit

public extension UISearchController {
    convenience init(searchResultsController: UIViewController?, then completion: ((_ viewController: UISearchController) -> Void)? = nil) {
        self.init(searchResultsController: searchResultsController)
        completion?(self)
    }
}
