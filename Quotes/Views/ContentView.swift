//
//  ContentView.swift
//  Quotes
//
//  Created by Luis Calcano on 21/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = QuoteModel()

    var body: some View {
        


        NavigationView{
            ScrollView {
                VStack {
                    ForEach(model.quotes) { item in
                        NavigationLink {
                            QuoteView(quote: item)
                        } label: {
                            ZStack {
                                Image(item.image)
                                    .resizable()
                                    .padding(.vertical, 5.0)
                                    .frame(width: 375, height: 375, alignment: .center)
                                .cornerRadius(20)
                                VStack(alignment: .leading) {
                                    Text(item.quote[0])
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.leading)
                                    .frame(width: 350.0)
                                    Text(" -  \(item.name)")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                    }
                }
            }.navigationBarTitle("Famous Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
