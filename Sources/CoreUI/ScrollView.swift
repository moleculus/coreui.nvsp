import UIKit

open class ScrollView: UIScrollView {
 
    // MARK: - Initialization.
    
    public init(then completion: ((_ collectionView: ScrollView) -> Void)?) {
        super.init(frame: .zero)
        completion?(self)
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }
    
}
