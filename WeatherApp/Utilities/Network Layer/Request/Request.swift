import Foundation

class Request {
    static func fetchWeatherData(completion: @escaping (WeatherData?) -> Void) {
        let url = URL(string: "https://api.weather.com/forecast")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                let weatherData = try? JSONDecoder().decode(WeatherData.self, from: data)
                completion(weatherData)
            } else {
                completion(nil)
            }
        }.resume()
    }
}
