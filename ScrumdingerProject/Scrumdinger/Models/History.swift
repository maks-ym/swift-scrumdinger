/*
 See LICENSE folder for this sample’s licensing information.
 */

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    var attendeeString: String {
        attendees.map({ $0.name }).joined(separator: ", ")
    }
    var transcript: String?
    
    
    init(id: UUID = UUID(), date: Date = Date(), attendees: [DailyScrum.Attendee], transcript: String? = nil) {
        self.id = id
        self.date = date
        self.attendees = attendees
        self.transcript = transcript
    }
}
