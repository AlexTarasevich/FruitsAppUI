//
//  OnboardingView.swift
//  Fructs
//
//  Created by Александр Тарасевич on 12.03.2022.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
             
                SwiftUIView(fruit: item)
            }
        } // :TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
