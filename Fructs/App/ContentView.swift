//
//  ContentView.swift
//  Fructs
//
//  Created by Александр Тарасевич on 09.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    var fruits:[Fruit] = fruitsData
    
    
    
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
        
            .navigationTitle("Fruits")
        } //: Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
