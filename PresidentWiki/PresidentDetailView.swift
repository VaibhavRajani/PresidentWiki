//
//  PresidentDetailView.swift
//  PresidentWiki
//
//  Created by Vaibhav Rajani on 1/27/24.
//

import Foundation
import SwiftUI

struct PresidentDetailView: View {
    var president: President

    var body: some View {
        if let url = URL(string: president.url) {
            WebView(url: url)
        } else {
            Text("Invalid URL")
        }
    }
}
