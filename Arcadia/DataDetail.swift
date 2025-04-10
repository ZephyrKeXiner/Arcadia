//
//  DataDetail.swift
//  Arcadia
//
//  Created by 龚浩天 on 2025/4/10.
//

import Foundation
import SwiftData

@Model
final class NoteContent {
    var title: String
    var content: String
    var creationDate: Date
    
    init(title: String, content: String, creationDate: Date = Date()) {
        self.title = title
        self.content = content
        self.creationDate = creationDate
    }
}
