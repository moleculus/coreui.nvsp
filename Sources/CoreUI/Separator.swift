import UIKit

public class Separator: UIView {

    // MARK: - Computed Properties.

    public override var intrinsicContentSize: CGSize {
        return CGSize(width: 1 / UIScreen.main.scale, height: 1 / UIScreen.main.scale)
    }

    // MARK: - Initialization.

    required public init(then completion: ((_ view: Separator) -> Void)?) {
        super.init(frame: .zero)
        completion?(self)
    }
    
    public init() {
        super.init(frame: .zero)
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }

}
