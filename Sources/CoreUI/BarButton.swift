import UIKit

open class BarButton: UIBarButtonItem {
    
    // MARK: - Initialization.
    
    public init(then completion: ((_ button: UIBarButtonItem) -> Void)? = nil) {
        super.init()
        completion?(self)
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }
    
}
