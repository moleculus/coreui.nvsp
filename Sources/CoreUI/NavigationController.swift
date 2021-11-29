import UIKit

public class NavigationController: UINavigationController {
    
    // MARK: - Observed Properties.
    
    public var statusBarStyle: UIStatusBarStyle = .default {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    // MARK: - Computed Properties.
        
    public override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }
    
}
