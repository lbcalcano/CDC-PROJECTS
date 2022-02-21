//
//  QuoteModel.swift
//  Quotes
//
//  Created by Luis Calcano on 21/2/22.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var quotes = [Quote]()

    init() {
        
        // Find the path to the JSON file in our bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if pathString != nil {
            
            // Create a URL object with the string path to our local JSON file
            let url = URL(fileURLWithPath: pathString!)
            
            do {
                // Create data object, pointing it to our local JSON file
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    // Try to decode the json data into instances of Pizzas
                    var jsonQuotes = try decoder.decode([Quote].self, from: data)
                    
                    
                    // Loop through pizzas and add Ids
                    for index in 0..<jsonQuotes.count {
                        jsonQuotes[index].id = UUID()
                    }
                    
                    // Assign to pizzas property
                    self.quotes = jsonQuotes
                }
                catch {
                    print("Couldn't parse")
                }
                
            }
            catch {
                print("Couldn't create Data object")
            }
            
        }
    }
    
}
