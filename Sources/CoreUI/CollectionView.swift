import UIKit

open class CollectionView: UICollectionView {
 
    // MARK: - Initialization.
    
    public init(direction: UICollectionView.ScrollDirection, then completion: ((_ collectionView: CollectionView) -> Void)?) {
        super.init(frame: .zero, collectionViewLayout: .flowLayout(direction: direction))
        completion?(self)
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }
    
}
