//
//  ContentViewNav.swift
//  SimpleSearch
//
//  Created by James Dempsey on 8/25/23.
//

import SwiftUI

struct ContentViewNav: View {
    @StateObject var nameStore = StateNameStore()
    
    var body: some View {
        NavigationStack {
            List(nameStore.filteredNames) { item in
                Text(item.name)
            }
            .searchable(text: $nameStore.searchString)
        }
    }
}

struct ContentViewNav_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
