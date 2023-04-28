//
//  History.swift
//  Scrumdinger
//
//  Created by Anna Gorobchenko on 27.04.2023.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    var transcript: String?
    
    init(
        id: UUID = UUID(),
        date: Date = Date(),
        attendees: [DailyScrum.Attendee],
        transcript: String? = nil
    ) {
        self.id = id
        self.date = date
        self.attendees = attendees
        self.transcript = transcript
    }
}

extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees.map { $0.name })
    }
}
