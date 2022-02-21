//
//  Quotes.swift
//  Quotes
//
//  Created by Luis Calcano on 21/2/22.
//

import Foundation

struct Quote: Identifiable, Decodable {

    // The id property is for the Identifiable protocol which we need to display these instances in a SwiftUI List
    var id:UUID?
    
    // These properties map to the properties in the JSON file
    var name:String
    var quote:[String]
    var image:String

}
