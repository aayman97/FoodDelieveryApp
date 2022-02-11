//
//  HomeScreen.swift
//  FoodDelieveryApp
//
//  Created by Ahmed Ayman on 11/02/2022.
//

import SwiftUI

struct HomeScreen: View {
    
    var screenSize: CGRect = UIScreen.main.bounds
    
    var categories: [String] = ["Burger","Chicken","Pizza","Seafood"]
    
    @State var category : String = "Burger"
    var body: some View {
        
        VStack(alignment: .leading){
            TopBar(name : "Ahmed Ayman").padding(.leading,10)
            
            HStack(alignment: .center, spacing: screenSize.width*0.15){
                
                VStack{
                    Spacer()
                    Text("The Fastest Food Delivery")
                        .tracking(2)
                        .foregroundColor(Color.white).font(.system(size: 20)).fontWeight(.bold).frame(width: screenSize.width*0.4, height: (screenSize.height*0.18)/3)
                    Spacer()
                    Button(action: {
                        print("Order Now")
                    }, label: {
                        Text("Order Now")
                            .fontWeight(.bold)
                            .foregroundColor( Color( red: 53/255, green: 106/255, blue: 126/255, opacity: 1.0))
                            .background(
                                Color.white.frame(width: screenSize.width*0.4,height:(screenSize.height*0.18)/3.5).cornerRadius(15)
                            )
                    })
                    Spacer()
                }
                
                Image("bikeGuy").resizable().frame(width: screenSize.width*0.32,height: screenSize.width*0.32).aspectRatio(contentMode: .fill).offset(x: 0, y: 15)
                
                
            }.frame(width: screenSize.width*0.95, height: screenSize.height*0.18)
            
                .background( Color( red: 53/255, green: 106/255, blue: 126/255, opacity: 1.0)).cornerRadius(20).padding(.leading,10)
            
            
            HStack(alignment: .center){
                Text("Categories").font(.system(size: 30)).fontWeight(.bold)
                
                Spacer()
                Button(
                    action : {
                        print("View all")
                    },
                    label : {
                        Text("View all").foregroundColor(Color.black.opacity(0.5))
                            
                    }
                )
            }.padding(.horizontal,10)
            
            ScrollView(.horizontal, showsIndicators: false ){
                HStack(spacing : 10){
                    ForEach(0..<categories.count) { i in
                        Button(action: {
                            withAnimation(.easeIn(duration: 0.1)){
                                category = categories[i]
                            }
                        }, label: {
                            ZStack{
                                
                                
                            }.frame(width: screenSize.width*0.25, height: screenSize.height*0.05) .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 2).background(
                                        Text("\(categories[i])").fontWeight(.bold)    .foregroundColor(category == categories[i] ? Color.white.opacity(1.0) : Color.black.opacity(0.5))  .font(.system(size: 18)))
                            ).background(category == categories[i] ? Color.black : Color.white).cornerRadius(10)
                            
                            
                            
                        })
                        
                    }.padding(.leading,10)
                }
            }
            
        }.ignoresSafeArea()
        
        
    }
    
    @ViewBuilder
    func TopBar(name : String)->some View{
        
        
        HStack{
            Image("male-avatar")
                .resizable()
                .frame(width: screenSize.height*0.05, height: screenSize.height*0.05)
            
            VStack(alignment : .leading){
                Text("Good Afternoon").foregroundColor(Color.black.opacity(0.5)).font(.system(size: 15)).fontWeight(.bold)
                Spacer(minLength: 2)
                Text(name).fontWeight(.medium).font(.system(size: 18))
            }.frame(height :screenSize.height*0.05 ).padding(.leading,5)
        }.frame(width: screenSize.width*0.95, height: screenSize.height*0.08, alignment: .leading)
    }
}
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
