import UIKit

extension View: ReusableView {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    @objc open func prepareForReuse() {}
}

public extension UIView {
    static func animate(with keyboard: Keyboard, animations: @escaping () -> Void) {
        UIView.animate(withDuration: keyboard.duration, delay: 0, options: keyboard.options, animations: animations, completion: nil)
    }
}

public extension UIView {
    var nestedSubviews: [UIView] {
        var nestedSubviews = subviews
        
        for subview in subviews {
            nestedSubviews = nestedSubviews + subview.nestedSubviews
        }
        
        return nestedSubviews
    }
}

