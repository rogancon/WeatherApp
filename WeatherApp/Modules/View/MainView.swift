import UIKit
import SnapKit

class MainView: UIView {
    private let maxTemperatureLabel = UILabel()
    private let minTemperatureLabel = UILabel()
    private let averageTemperatureStack = UIStackView()
    private let windAndHumidityView = WeatherStatsView()
    private let currentTemperatureLabel = UILabel()
    private let stripView = UIView()
    private let descriptionLabel = UILabel()
    private let temperatureShapeImageView = UIImageView()
    private let backgroundImageView = UIImageView(image: UIImage(named: "backgroundNoise"))

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

extension MainView {
    func setupViews() {
        addSubviews(maxTemperatureLabel, minTemperatureLabel, averageTemperatureStack, windAndHumidityView, currentTemperatureLabel, stripView, descriptionLabel, temperatureShapeImageView, backgroundImageView)
    }

    func setupAppearance() {
        backgroundColor = .white
        maxTemperatureLabel.font = UIFont.boldSystemFont(ofSize: 18)
        minTemperatureLabel.font = UIFont.boldSystemFont(ofSize: 18)
    }

    func setupLayout() {
        maxTemperatureLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(20)
        }
    }
}
