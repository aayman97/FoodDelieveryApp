//
//  Screen2.swift
//  FoodDelieveryApp
//
//  Created by Ahmed Ayman on 19/02/2022.
//

import SwiftUI

struct Screen2: View {
    var screenSize: CGRect = UIScreen.main.bounds
    var body: some View {
        VStack{
            Text("Screen 2").foregroundColor(Color.black).font(.system(size: 40)).fontWeight(.light)
        }.frame(
            width: screenSize.width, height: screenSize.height
        ).background(Color.white)
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}
