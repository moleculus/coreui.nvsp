import UIKit

open class TextView: UITextView {
    
    // MARK: - Initialization.
    
    public init(then completion: ((_ label: TextView) -> Void)? = nil) {
        super.init(frame: .zero, textContainer: nil)
        completion?(self)
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }
    
}
