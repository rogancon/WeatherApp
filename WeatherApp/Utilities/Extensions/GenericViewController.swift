import UIKit

class GenericViewController<T: UIView>: UIViewController {
    var customView: T

    init() {
        customView = T()
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
