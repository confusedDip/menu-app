//
//  MenuListRow.swift
//  Menu
//
//  Created by nile on 1/21/24.
//

import SwiftUI

struct MenuListRow: View {
    
    @State var menuItem:MenuItem
    
    var body: some View {
        
        
        HStack (){
            
            
            Image(menuItem.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:50)
                .cornerRadius(10)
            
            VStack (alignment: .leading) {
                Text(menuItem.name)
                    .font(.headline)
                
                Text("$" + String(menuItem.price))
            }
            
            Spacer()
            
            Stepper("", value: $menuItem.count, in: 0...5)
            
            if menuItem.count > 0 {
                Text(String(menuItem.count))
            }

            
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.15)
        )
    }
}

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(menuItem: DataService().getData()[0])
    }
}
