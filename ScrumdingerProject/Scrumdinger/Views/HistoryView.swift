//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Mark Bangman on 06/05/2023.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var history: History {
        History(attendees: [
            DailyScrum.Attendee(name: "Anna"),
            DailyScrum.Attendee(name: "Greg"),
            DailyScrum.Attendee(name: "Luis")
        ],
        transcript: "Daria, would you like to start today? Sure, yesterda I reviewed Luis' PR and met with the design team to finalize the UI...")
    }
    
    static var previews: some View {
        HistoryView(history: history)
    }
}
