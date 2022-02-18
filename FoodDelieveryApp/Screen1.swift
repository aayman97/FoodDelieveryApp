//
//  HomeScreen.swift
//  FoodDelieveryApp
//
//  Created by Ahmed Ayman on 11/02/2022.
//

import SwiftUI

struct Screen1: View {
    
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
            
            Spacer()
            HStack(alignment: .center){
                Text("Categories").font(.system(size: 25)).fontWeight(.bold)
                
                Spacer()
                Button(
                    action : {
                        print("View all")
                    },
                    label : {
                        Text("View all").foregroundColor(Color.black.opacity(0.5))
                            
                    }
                )
            }.padding(.horizontal,10).padding(.vertical,10)
            
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
                        
                    }.padding(.horizontal,5)
                }
            }
            
            Spacer()
            HStack(alignment: .center){
                Text("Popular Food").font(.system(size: 25)).fontWeight(.bold)
                
                Spacer()
                Button(
                    action : {
                        print("View all")
                    },
                    label : {
                        Text("View all").foregroundColor(Color.black.opacity(0.5))
                            
                    }
                )
            }.padding(.horizontal,10).padding(.vertical,10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(0..<2){index in
                        
                        Button(action: {
                            print(index)
                        }, label:{
                            FoodCard(category: self.category, width: screenSize.width, height: screenSize.height,index: (index+1)).padding(.horizontal,5)
                           
                        })
                        
                      
                    }
                }
            }
            
            Spacer(minLength: 100)
            
        }.navigationBarBackButtonHidden(true).navigationBarHidden(true).padding(.vertical,10)
        
        
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
struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1()
    }
}

struct FoodCard: View {
    var category : String
    var width : Double
    var height : Double
    var index : Int
    
    var body: some View {
        ZStack{
            Image(""+category+"\(index)")
                .resizable()
                            .scaledToFill()
                            .frame(width: width*0.52, height: height*0.33).cornerRadius(19)
                            .clipped()
               
            
            Circle()
                .fill(Color( red: 218/255, green: 77/255, blue: 75/255, opacity: 1.0))
                .frame(width: width*0.7, height: width*0.7)
                .offset(x:-(width*0.5)/2.2,y:(height*0.3)/2)
            
            VStack(alignment: .leading){
                
                let a : Double = 20.0
                let b : String = String(format: "%.2f", a)
                
                Text("Most Loved "+category).foregroundColor(Color.white)
                    .fontWeight(.medium)
                    .frame(width:width*0.25 ).multilineTextAlignment(.leading).offset(x: -0).font(.system(size: 19))
                
                Text("$\(b)").foregroundColor(Color.white)
                    .fontWeight(.medium).frame(height: 10).font(.system(size: 19))
            }.frame(width: width*0.25).offset(x:-(width*0.1),y:(height*0.3)/3.1)
        }
        .frame(width: width*0.52, height: height*0.33).cornerRadius(10)
        .clipped()
    }
}
