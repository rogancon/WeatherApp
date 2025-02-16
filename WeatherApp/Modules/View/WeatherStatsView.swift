import UIKit
import SnapKit

class WeatherStatsView: UIView {
    let windData = WindData(speed: 10.0, direction: "North")
    let humidityData = HumidityData()
    private let symbolStack = UIStackView()
    private let textStack = UIStackView()
    private let valueStack = UIStackView()
    private let generalStack = UIStackView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupAppearance()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension WeatherStatsView {
    func setupViews() {
        addSubviews(symbolStack, textStack, valueStack, generalStack)
    }

    func setupAppearance() {
        symbolStack.axis = .horizontal
        symbolStack.spacing = 10
    }

    func setupLayout() {
        symbolStack.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(20)
        }
    }
}
