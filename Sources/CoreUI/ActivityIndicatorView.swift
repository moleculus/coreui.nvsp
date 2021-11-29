import UIKit

public class ActivityIndicatorView: UIActivityIndicatorView {
    
    // MARK: - Initialization.
    
    public convenience init(then completion: ((_ view: UIActivityIndicatorView) -> Void)? = nil) {
        self.init(frame: .zero)
        completion?(self)
    }
    
}
