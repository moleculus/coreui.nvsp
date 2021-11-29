import UIKit

public extension UISegmentedControl {
    func setSegments(_ segments: [String]) {
        removeAllSegments()
        
        segments
            .reversed()
            .forEach { insertSegment(withTitle: $0, at: 0, animated: false)}
        
        selectedSegmentIndex = 0
    }
}
