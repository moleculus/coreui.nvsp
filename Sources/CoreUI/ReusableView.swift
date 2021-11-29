import UIKit

public protocol ReusableView {
    static var reuseIdentifier: String { get }
    func prepareForReuse()
}

extension ReusableView {
    func prepareForReuse() {}
}
