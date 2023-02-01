//
//  WeatherManager.swift
//  Clima
//
//  Created by powerapp on 2023/01/31.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=1425184a5fb008c2a4e41dacea36f694&units=metric"

    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }

    func performRequest(urlString: String) {

        // 1. Create a URL
        if let url = URL(string: urlString) {

            // 2. Create a URLSession
            let session = URLSession(configuration: .default)

            // 3. Give the session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }

                if let safeData = data {
                    parseJSON(weatherData: safeData)
                }
            }

            // 4. Start the task
            task.resume()
        }
    }

    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print("temp: \(decodedData.main.temp)")
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name

            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)

            print(weather.temperatureString)
        } catch {
            print(error)
        }

    }
}
