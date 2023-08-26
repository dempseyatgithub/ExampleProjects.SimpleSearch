//
//  ContentView.swift
//  SimpleSearch
//
//  Created by James Dempsey on 8/25/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var nameStore = StateNameStore()
    
    var body: some View {
        List(nameStore.filteredNames) { item in
            Text(item.name)
        }
        .searchable(text: $nameStore.searchString)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
