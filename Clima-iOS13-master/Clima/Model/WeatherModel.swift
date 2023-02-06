//
//  WeatherModel.swift
//  Clima
//
//  Created by powerapp on 2023/02/01.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double

    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }

    var conditionName: String {
        switch conditionId {
        case 200...299:
            return "cloud.bolt.rain.fill"
        case 300...399:
            return "cloud.drizzle.fill"
        case 500...599:
            return "cloud.rain.fill"
        case 600...699:
            return "cloud.snow.fill"
        case 701:
            return "icloud"
        case 711:
            return "smoke.fill"
        case 721:
            return "sun.haze.circle.fill"
        case 731:
            return "sun.dust.fill"
        case 741:
            return "cloud.fog.fill"
        case 751:
            return "beach.umbrella.fill"
        case 761:
            return "sun.dust.fill"
        case 761:
            return "mountain.2.fill"
        case 771:
            return "wind.circle.fill"
        case 781:
            return "tornado.circle.fill"
        case 800:
            return "sun.max.fill"
        case 801...899:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }

}
