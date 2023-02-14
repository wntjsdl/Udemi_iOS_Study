//
//  CoinModel.swift
//  ByteCoin
//
//  Created by powerapp on 2023/02/14.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let time: String
    let assetIdBase: String
    let assetIdQuote: String
    let rate: Float
}

enum CodingKeys: String, CodingKey {
    case time
    case assetIdBase = "asset_id_base"
    case assetIdQuote = "asset_id_quote"
    case rate
}
