//
//  Price.swift
//  Tipsy
//
//  Created by powerapp on 2023/01/30.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Price {
    var input: Float
    var tipPct: Float
    var total: Float

    mutating func getTotal() -> Float {
        self.total = input + input * tipPct
        return total
    }
}
