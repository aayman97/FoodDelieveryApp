//
//  ProductScreen.swift
//  FoodDelieveryApp
//
//  Created by Ahmed Ayman on 19/02/2022.
//

import SwiftUI

struct ProductScreen: View {
    
    var screenSize: CGRect = UIScreen.main.bounds
    var category : String
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    @State var NumberOfPeices : Int = 1
    
    var body: some View {
        VStack{
            Spacer(minLength: screenSize.height*0.08)
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color.white.opacity(0.7))
                        .frame(width: 12, height: 10)
            })
            }.frame(width: screenSize.width*0.9,alignment: .leading)
            
            Spacer()
            Text(category).font(.system(size: 25)).foregroundColor(Color.white.opacity(0.8)).fontWeight(.regular) .tracking(2)
            Spacer()
            
            
            
            Image("\(category)Product")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screenSize.width*0.5, height: screenSize.height*0.23).scaleEffect( NumberOfPeices == 1 ? 0.9 : NumberOfPeices == 2 ? 1.0 : 1.05 )
            Spacer()
            
            VStack(alignment: .leading){
            Spacer()
                Peices(NumberOfPeices: $NumberOfPeices)
                
                Details()
                
                Text("Description")
                    .font(.system(size: 20)).fontWeight(.bold)
                    .padding(.horizontal).foregroundColor(Color.black)
                Spacer()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat.  ").foregroundColor(Color.black.opacity(0.4)).padding(.horizontal)
                
                Spacer(minLength: 0)
                HStack{
                    Button(action: {
                        print("Add to cart")
                    }, label: {
                        Text("ADD TO CART")
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                            .tracking(2)
                            .font(.system(size: 16))
                            .frame(width: screenSize.width*0.95, height: screenSize.height*0.08).background( Color( red: 53/255, green: 106/255, blue: 126/255, opacity: 1.0)).cornerRadius(14)
                })
                }.frame(width:screenSize.width)
                Spacer()
            }
            .frame(width: screenSize.width, height: screenSize.height*0.53)
            .background(Color.white).cornerRadius(30,corners: [.topLeft, .topRight])
            
            
        }
        .frame(width: screenSize.width, height: screenSize.height)
        .background( Color( red: 53/255, green: 106/255, blue: 126/255, opacity: 1.0))
        .ignoresSafeArea().navigationBarHidden(true).navigationBarBackButtonHidden(true)
       
    }
}

struct ProductScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductScreen(category: "Chicken")
    }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct Peices: View {
    
    @Binding var NumberOfPeices : Int
   
    var screenSize: CGRect = UIScreen.main.bounds
    
    var body: some View {
        HStack{
            
            VStack(spacing: 6){
                VStack(spacing: 12) {
                    Button(action: {
                        withAnimation(.easeIn(duration: 0.1)){
                            NumberOfPeices = 1
                        }
                    }, label: {
                        Circle()
                            .strokeBorder(NumberOfPeices == 1 ? Color( red: 218/255, green: 77/255, blue: 75/255, opacity: 1.0): Color.black.opacity(0.1),lineWidth: 2)
                            .frame(width:screenSize.width*0.07,height: screenSize.width*0.07)
                            .overlay(
                                Circle()
                                    .fill(NumberOfPeices == 1 ? Color( red: 218/255, green: 77/255, blue: 75/255, opacity: 1.0): Color.white)
                                    .frame(width:screenSize.width*0.05)
                            )
                    })
                    Text("$10.00").foregroundColor(Color.black.opacity(0.3)).font(.system(size: 14))
                }
                
                Text("10 Pieces").font(.system(size: 14)).foregroundColor(Color.black)
            }
            
            Spacer()
            VStack(spacing: 6){
                VStack(spacing: 12) {
                    Button(action: {
                        withAnimation(.easeIn(duration: 0.1)){
                            NumberOfPeices = 2
                        }
                    }, label: {
                        Circle()
                            .strokeBorder(NumberOfPeices == 2 ? Color( red: 218/255, green: 77/255, blue: 75/255, opacity: 1.0): Color.black.opacity(0.1),lineWidth: 2)
                            .frame(width:screenSize.width*0.07,height: screenSize.width*0.07)
                            .overlay(
                                Circle()
                                    .fill(NumberOfPeices == 2 ? Color( red: 218/255, green: 77/255, blue: 75/255, opacity: 1.0): Color.white)
                                    .frame(width:screenSize.width*0.05)
                            )
                    })
                    Text("$20.00").foregroundColor(Color.black.opacity(0.3)).font(.system(size: 14))
                }
                
                Text("20 Pieces").font(.system(size: 14)).foregroundColor(Color.black)
            }
            
            Spacer()
            VStack(spacing: 5){
                VStack(spacing: 12) {
                    Button(action: {
                        withAnimation(.easeIn(duration: 0.1)){
                            NumberOfPeices = 3
                        }
                    }, label: {
                        Circle()
                            .strokeBorder(NumberOfPeices == 3 ? Color( red: 218/255, green: 77/255, blue: 75/255, opacity: 1.0): Color.black.opacity(0.1),lineWidth: 2)
                            .frame(width:screenSize.width*0.07,height: screenSize.width*0.07)
                            .overlay(
                                Circle()
                                    .fill(NumberOfPeices == 3 ? Color( red: 218/255, green: 77/255, blue: 75/255, opacity: 1.0): Color.white)
                                    .frame(width:screenSize.width*0.05)
                            )
                    })
                    Text("$30.00").foregroundColor(Color.black.opacity(0.3)).font(.system(size: 14))
                }
                
                Text("30 Pieces").font(.system(size: 14)).foregroundColor(Color.black)
            }
        }.padding(.horizontal,30).navigationBarBackButtonHidden(true)
    }
}

struct Details: View {
    
    var screenSize: CGRect = UIScreen.main.bounds
    
    var body: some View {
        HStack{
            
            HStack( spacing: 10){
                Image(systemName: "star")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20,height: 20)
                    .foregroundColor(Color( red: 218/255, green: 77/255, blue: 75/255, opacity: 1.0))
                
                Text("4.9").font(.system(size: 15)).fontWeight(.medium).foregroundColor(Color.black)
            }
            
            Spacer()
            HStack( spacing: 7.5){
                Image(systemName: "flame")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20,height: 20)
                    .foregroundColor(Color( red: 218/255, green: 77/255, blue: 75/255, opacity: 1.0))
                
                Text("65 Calories").font(.system(size: 15)).fontWeight(.medium).foregroundColor(Color.black)
            }
            Spacer()
            HStack( spacing: 7.5){
                Image(systemName: "clock")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20,height: 20)
                    .foregroundColor(Color( red: 218/255, green: 77/255, blue: 75/255, opacity: 1.0))
                
                Text("20-30 min").font(.system(size: 15)).fontWeight(.medium).foregroundColor(Color.black)
            }
            
        }.padding()
    }
}

//extension UINavigationController: UIGestureRecognizerDelegate {
//    override open func viewDidLoad() {
//        super.viewDidLoad()
//        interactivePopGestureRecognizer?.delegate = self
//    }
//
//    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
//        return viewControllers.count > 1
//    }
//}
