//
//  Item.swift
//  CoordiShareMenu
//
//  Created by Srikrishna Pothukuchi on 31/10/25.
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
