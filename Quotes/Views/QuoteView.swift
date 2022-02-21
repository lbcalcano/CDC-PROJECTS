//
//  Quotes.swift
//  Quotes
//
//  Created by Luis Calcano on 21/2/22.
//

import SwiftUI


struct QuoteView: View {
    
    var quote:Quote

    
    var body: some View {
         
        ScrollView {
            VStack(alignment: .leading) {
                ForEach (0..<quote.quote.count, id: \.self){ index in
                    Text(String(index+1) + ". " + quote.quote[index])
                        .font(.title2)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom)
                    }
                
//                    ForEach (0..<recipe.directions.count, id: \.self) { index in
//
//                        Text(String(index+1) + ". " + recipe.directions[index])
//                            .padding(.bottom, 5)
//                    }
                    Text("Quotes by " + quote.name)

            }
            .padding(.horizontal)
            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
            
        }.navigationBarTitle(quote.name)
        
}
}

struct Quotes_Previews: PreviewProvider {
    static var previews: some View {
        
        // We'll have to pass in a dummy pizza to the preview
        QuoteView(quote: Quote(id: UUID(), name: "Wayne Gretzky", quote: [
            "You miss 100% of the shots you don't take.",
            "You miss 100% of the shots you don't take.",
            "You miss 100% of the shots you don't take.",
            "You miss 100% of the shots you don't take."
        ], image: "Test"))
        
    }
}
