import UIKit

public class Header: View {
    
    // MARK: - UI Properties.
    
    private let backgroundView = UIView(frame: .zero)
    private let separator = Separator()
    
    // MARK: - Observed Properties.
    
    public override var backgroundColor: UIColor? {
        didSet {
            backgroundView.backgroundColor = backgroundColor
        }
    }
    
    public var separatorColor: UIColor? {
        didSet {
            separator.backgroundColor = separatorColor
        }
    }
    
    // MARK: - Initialization.
    
    public required init(then completion: ((Header) -> Void)? = nil) {
        super.init(then: nil)
        
        addSubview(backgroundView)
        backgroundView.snp.makeConstraints {
            $0.edges.equalTo(self)
        }
        
        addSubview(separator)
        separator.snp.makeConstraints {
            $0.leading.equalTo(self)
            $0.trailing.equalTo(self)
            $0.bottom.equalTo(self)
        }
        
        completion?(self)
    }
   
}
