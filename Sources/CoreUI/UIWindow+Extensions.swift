import UIKit

public extension UIWindow {
    static var current: UIWindow? {
        if #available(iOS 13, *), let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? UIWindowSceneDelegate, let window = sceneDelegate.window {
            
            return window
        }
        
        if let window = UIApplication.shared.delegate?.window {
            return window
        }

        return nil
    }
}
