//
//  Screen3.swift
//  FoodDelieveryApp
//
//  Created by Ahmed Ayman on 19/02/2022.
//

import SwiftUI

struct Screen3: View {
    var screenSize: CGRect = UIScreen.main.bounds
    var body: some View {
        VStack{
            Text("Screen 3").foregroundColor(Color.black).font(.system(size: 40)).fontWeight(.light)
        }.frame(
            width: screenSize.width, height: screenSize.height
        ).background(Color.white)
    }
}

struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3()
    }
}
