import Foundation
import UIKit

protocol MeteorologicalDataProtocol {
    var text: UILabel { get }
    var value: UILabel { get }
    var symbol: UIImageView { get }
}

enum SFArrowDirection: String {
    case up = "arrow.up"
    case down = "arrow.down"
}

struct HumidityData: MeteorologicalDataProtocol {
    let text = UILabel()
    let value = UILabel()
    let symbol = UIImageView(image: UIImage(systemName: "humidity"))
}
