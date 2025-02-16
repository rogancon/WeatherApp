import UIKit

final class MainViewController: GenericViewController<MainView> {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

private extension MainViewController {
    func makeAttributedString(_ text: String) -> NSAttributedString {
        let attributedString = NSAttributedString(
            string: text,
            attributes: [
                .foregroundColor: UIColor.text
            ]
        )
        return attributedString
    }
}
