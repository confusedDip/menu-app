//
//  MenuItem.swift
//  Menu
//
//  Created by nile on 1/21/24.
//

import Foundation

struct MenuItem:Identifiable {
    
    var id:UUID = UUID()
    var name:String
    var price:Double
    var imageName:String
    var count:Int = 0

}

