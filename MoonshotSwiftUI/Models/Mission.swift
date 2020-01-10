//
//  Mission.swift
//  MoonshotSwiftUI
//
//  Created by Sagun Raj Lage on 1/9/20.
//  Copyright © 2020 Sagun Raj Lage. All rights reserved.
//

import Foundation

struct Mission: Codable, Identifiable {
    
    struct Crew: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let crew: [Crew]
    let launchDate: Date?
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        if let launchDate = launchDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter.string(from: launchDate)
        } else {
            return "N/A"
        }
    }
    
}
