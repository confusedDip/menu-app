//
//  ContentView.swift
//  Menu
//
//  Created by nile on 1/21/24.
//

import SwiftUI


struct MenuView: View {
    
    // An Array of MenuItem sturctures
    @State var menuItems:[MenuItem] = []
    var dataService = DataService()
    
    var body: some View {
        
        List(menuItems) { menuItem in
            
            MenuListRow(menuItem: menuItem)

        }
        .listStyle(.plain)
        .onAppear{
            // Fetch the data and assign it 
            menuItems = dataService.getData()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
