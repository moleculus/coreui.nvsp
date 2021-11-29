import UIKit

open class View: UIView {
    
    // MARK: - Initialization.
    
    required public init(then completion: ((_ view: View) -> Void)?) {
        super.init(frame: .zero)
        clipsToBounds = false
        backgroundColor = .clear
        completion?(self)
    }
    
    public init() {
        super.init(frame: .zero)
    }
    
    @available(*, unavailable, message: "Loading this view from a nib is unsupported")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is unsupported")
    }
    
    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        for nestedSubview in nestedSubviews {
            if let button = nestedSubview as? Button, button.isExpandedTarget {
                let newPoint = convert(point, to: button)
                if let view = button.hitTest(newPoint, with: event) {
                    return view
                }
            }
        }
        
        return super.hitTest(point, with: event)
    }
    
}

