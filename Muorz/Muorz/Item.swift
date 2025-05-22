//
//  Item.swift
//  Muorz
//
//  Created by Simon Naud on 22/05/25.
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
