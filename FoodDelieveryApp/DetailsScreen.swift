//
//  DetailsScreen.swift
//  FoodDelieveryApp
//
//  Created by Ahmed Ayman on 19/02/2022.
//

import SwiftUI

struct DetailsScreen: View {
    
    var screenSize: CGRect = UIScreen.main.bounds
    @Binding var show: Bool
    
    var body: some View {
        VStack{
            Button(action: {
                show = false
            }, label: {
                Text("Back To Home Screen")
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .frame(width : screenSize.width*0.9,height: screenSize.height*0.1)
                    .background( Color( red: 53/255, green: 106/255, blue: 126/255, opacity: 1.0))
                    .cornerRadius(20)

            })
        }.frame(
            width: screenSize.width, height: screenSize.height
        ).background(Color.white)
       
      
    }
}

struct DetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreen(show: .constant(true))
    }
}
