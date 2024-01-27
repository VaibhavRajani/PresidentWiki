//
//  President.swift
//  PresidentWiki
//
//  Created by Vaibhav Rajani on 1/27/24.
//

import Foundation

struct President: Identifiable, Decodable {
    let id: UUID = UUID()
    var name: String
    var url: String

    enum CodingKeys: String, CodingKey {
        case name
        case url
    }
}


func loadPresidents() -> [President] {
    guard let url = Bundle.main.url(forResource: "PresidentList", withExtension: "plist"),
          let data = try? Data(contentsOf: url) else {
        fatalError("Failed to load presidents.plist from bundle.")
    }

    let decoder = PropertyListDecoder()
    do {
        let presidents = try decoder.decode([String: [President]].self, from: data)
        return presidents["presidents"] ?? []
    } catch {
        fatalError("Failed to decode presidents.plist: \(error)")
    }
}
