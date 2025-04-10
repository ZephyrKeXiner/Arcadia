//
//  Item.swift
//  Arcadia
//
//  Created by 龚浩天 on 2025/4/10.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
