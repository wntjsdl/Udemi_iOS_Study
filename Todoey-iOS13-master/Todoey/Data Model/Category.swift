//
//  Category.swift
//  Todoey
//
//  Created by JuSun Kang on 12/18/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
