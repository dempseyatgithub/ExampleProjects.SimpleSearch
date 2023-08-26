//
//  StateNameStore.swift
//  SimpleSearch
//
//  Created by James Dempsey on 8/25/23.
//

import Foundation

class StateName: Identifiable {
    let name: String
    let id: UUID = UUID()
    init(name: String) { self.name = name }
}

class StateNameStore: ObservableObject {
    @Published var searchString: String = ""
    
    var filteredNames: [StateName] {
        allNames.filter { $0.name.isEmpty || $0.name.lowercased().hasPrefix(searchString.lowercased()) }
    }
    
    private var allNames = [
        StateName(name: "Alabama"),
        StateName(name: "Alaska"),
        StateName(name: "Arizona"),
        StateName(name: "Arkansas"),
        StateName(name: "California"),
        StateName(name: "Colorado"),
        StateName(name: "Connecticut"),
        StateName(name: "Delaware"),
        StateName(name: "Florida"),
        StateName(name: "Georgia"),
        StateName(name: "Hawaii"),
        StateName(name: "Idaho"),
        StateName(name: "Illinois"),
        StateName(name: "Indiana"),
        StateName(name: "Iowa"),
        StateName(name: "Kansas"),
        StateName(name: "Kentucky"),
        StateName(name: "Louisiana"),
        StateName(name: "Maine"),
        StateName(name: "Maryland"),
        StateName(name: "Massachusetts"),
        StateName(name: "Michigan"),
        StateName(name: "Minnesota"),
        StateName(name: "Mississippi"),
        StateName(name: "Missouri"),
        StateName(name: "Montana"),
        StateName(name: "Nebraska"),
        StateName(name: "Nevada"),
        StateName(name: "New Hampshire"),
        StateName(name: "New Jersey"),
        StateName(name: "New Mexico"),
        StateName(name: "New York"),
        StateName(name: "North Carolina"),
        StateName(name: "North Dakota"),
        StateName(name: "Ohio"),
        StateName(name: "Oklahoma"),
        StateName(name: "Oregon"),
        StateName(name: "Pennsylvania"),
        StateName(name: "Rhode Island"),
        StateName(name: "South Carolina"),
        StateName(name: "South Dakota"),
        StateName(name: "Tennessee"),
        StateName(name: "Texas"),
        StateName(name: "Utah"),
        StateName(name: "Vermont"),
        StateName(name: "Virginia"),
        StateName(name: "Washington"),
        StateName(name: "West Virginia"),
        StateName(name: "Wisconsin"),
        StateName(name: "Wyoming"),
    ]
}
