import UIKit

public extension UITabBarController {
    convenience init(viewControllers: [UIViewController], color: (selected: UIColor, unselected: UIColor)) {
        self.init(nibName: nil, bundle: nil)
        
        self.viewControllers = viewControllers
        tabBar.tintColor = color.selected
        tabBar.unselectedItemTintColor = color.unselected
    }
}
