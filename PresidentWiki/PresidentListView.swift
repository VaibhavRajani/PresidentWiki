//
//  PresidentListView.swift
//  PresidentWiki
//
//  Created by Vaibhav Rajani on 1/27/24.
//

import Foundation
import SwiftUI

struct PresidentsListView: View {
    var presidents: [President] = loadPresidents()

    var body: some View {
        List(presidents) { president in
            NavigationLink(destination: PresidentDetailView(president: president)) {
                Text(president.name)
            }
        }
        .accessibility(identifier: "PresidentsTable")

    }
}
