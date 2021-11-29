import UIKit

public extension UICollectionView {
    convenience init(direction: UICollectionView.ScrollDirection) {
        self.init(frame: .zero, collectionViewLayout: .flowLayout(direction: direction))
    }
}

public extension UICollectionView {
    func dequeueCell<T: ReusableView>(withReusableView: T.Type, forIndexPath indexPath: IndexPath, then completion: ((_ view: T) -> Void)?) -> CollectionViewCell<T> {
        let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as! CollectionViewCell<T>
        completion?(cell.customView)
        return cell
    }
    
    func register<T>(cellWithReusableView: T.Type) where T: View {
        register(CollectionViewCell<T>.self, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
}
