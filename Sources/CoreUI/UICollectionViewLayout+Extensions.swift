import UIKit

public extension UICollectionViewLayout {
    static func flowLayout(direction: UICollectionView.ScrollDirection) -> UICollectionViewLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = direction
        return layout
    }
}
