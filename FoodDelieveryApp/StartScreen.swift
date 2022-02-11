//
//  StartScreen.swift
//  FoodDelieveryApp
//
//  Created by Ahmed Ayman on 11/02/2022.
//

import SwiftUI

struct StartScreen: View {
    
    var screenSize: CGRect = UIScreen.main.bounds
    var body: some View {
        
        VStack{
            
            VStack{
            
                Spacer(minLength: screenSize.height*0.1)
                Image("deliveryguy")
            }.frame(width: screenSize.width, height: screenSize.height*0.5)
            
            VStack{
                Spacer()
                Text("Good Food For Good Moments")
                    .tracking(0)
                    .font(.system(size:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 59/255, green: 78/255, blue: 85/255, opacity: 1.0))

                
                Text("Home delivery and online reservation for resturants and cafe")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .font(.system(size:20))
                    .foregroundColor(Color(red: 59/255, green: 78/255, blue: 85/255, opacity: 0.5)).padding().padding(.horizontal,10)
                
                Spacer()
                
                NavigationLink(destination: HomeScreen(), label:{
                    Text("Get Started")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .frame(width: screenSize.width*0.9, height: screenSize.height*0.09).background(
                        Color( red: 53/255, green: 106/255, blue: 126/255, opacity: 1.0).cornerRadius(15)
                    )
                }).navigationBarBackButtonHidden(true)
                
                Spacer()
                
            }.frame( width :screenSize.width*0.95, height: screenSize.height*0.46).background(Color.white.cornerRadius(40)
            )
                        
            
        }.frame(width: screenSize.width, height: screenSize.height).ignoresSafeArea().background(
            Color( red: 53/255, green: 106/255, blue: 126/255, opacity: 1.0)
        )
    }
    }


struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
