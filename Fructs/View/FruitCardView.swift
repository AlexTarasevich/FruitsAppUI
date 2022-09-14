//
//  SwiftUIView.swift
//  Fructs
//
//  Created by Александр Тарасевич on 09.03.2022.
//

import SwiftUI

struct SwiftUIView: View {
    
    var fruit: Fruit
    
    
    
    
    @State private var isAnimating: Bool = false
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20 ) {
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
        
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                
                Text(fruit.description)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 980)
                
                
                StartButtonView()
                   
                
            }//: VSTACK
        } //: ZSTACK
        .onAppear{
            
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,
               maxHeight: .infinity, alignment: .center)
        .background(RadialGradient(gradient: Gradient(colors: fruit.gradientColors), center: .center, startRadius: 50, endRadius: 400))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
    

