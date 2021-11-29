import UIKit

open class ViewController<UI: View>: UIViewController {
    
    // MARK: - UI Properties.
    
    public let ui = UI(then: nil)
    
    // MARK: - Properties.
    
    private let keyboardTracker = KeyboardTracker()
    
    // MARK: - Observed Properties.
    
    public var statusBarStyle: UIStatusBarStyle = .default {
        didSet {
            if let nc = navigationController as? NavigationController {
                nc.statusBarStyle = statusBarStyle
            }
        }
    }
    
    // MARK: - Initialization.
    
    public init(then completion: ((_ viewController: ViewController) -> Void)? = nil) {
        super.init(nibName: nil, bundle: nil)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        completion?(self)
    }
    
    @available(*, unavailable, message: "Loading this controller from a nib is unsupported")
    public required init?(coder aDecoder: NSCoder) {
        fatalError("Loading this controller from a nib is unsupported")
    }
    
    // MARK: - Lifecycle.
    
    public override func loadView() {
        view = ui
    }
    
    // MARK: - Lifecycle.
    
    open override func viewDidLoad() {
        super.viewDidLoad()

        keyboardTracker.trackChanges { [weak self] (keyboard, isFirstChange) in
            self?.react(to: keyboard, isFirstChange: isFirstChange)
        }
    }
    
    // MARK: - Private Methods.
    
    open func react(to keyboard: Keyboard, isFirstChange: Bool) {
        // Override to provide functionality
    }
    
}
