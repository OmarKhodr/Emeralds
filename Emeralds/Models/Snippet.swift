//
//  Snippet.swift
//  Emeralds
//
//  Created by Omar Khodr on 5/24/21.
//

import SwiftUI

struct Snippet: Identifiable {
    struct Source {
        let name: String
        let color: Color
    }
    
    let id: UUID
    let authorName: String?
    let authorHandle: String?
    let source: Source
    let text: String
    
    init(id: UUID = UUID(), authorName: String?, authorHandle: String?, source: Source, text: String) {
        self.id = id
        self.authorName = authorName
        self.authorHandle = authorHandle
        self.source = source
        self.text = text
    }
}


extension Snippet {
    static let data: [Snippet] = [
        Snippet(authorName: "Ken Kocienda", authorHandle: "kocienda", source: Source(name: "Twitter", color: Color("Twitter")), text: "Modularity becomes less tenable as a design strategy as products become more complex. A modular sofa makes sense—but a modular wristwatch, laptop, or smartphone? Forget it."),
        Snippet(authorName: "Ken Kocienda", authorHandle: "kocienda", source: Source(name: "Twitter", color: Color("Twitter")), text: "When assessing the quality of work, the amount of time and effort that went into producing the work is irrelevant. It matters for planning, and for figuring out next steps, but not for judging the work itself."),
        Snippet(authorName: "Ken Kocienda", authorHandle: "kocienda", source: Source(name: "Twitter", color: Color("Twitter")), text: "There are two big holes in the modern software world, both in the personal use and group/enterprise setting: small databases and reminders.")
        
    ]
}
