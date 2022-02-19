//
//  Screens.swift
//  FoodDelieveryApp
//
//  Created by Ahmed Ayman on 18/02/2022.
//

import SwiftUI

struct Screens: View {
    
    var screenSize: CGRect = UIScreen.main.bounds
    
    @State var index : Double = 0.0
    
    var body: some View {
        
        ZStack{
          
            if(index == 0.0){
              
                    Screen1()
               
            }else if(index == 1.0){
                Screen2()
            }
            else if(index == 2.0){
                Screen3()
            }else if(index == 3.0){
                Screen4()
            }
            
            
            
            ZStack{
                Circle().fill(Color.red).frame(width: screenSize.height*0.05).offset(x: ((-((screenSize.width*0.95) - ((screenSize.height*0.07)))/2)+42)+((index)*(screenSize.width*0.95)/4.78) )
                HStack{
                    Spacer()
                    Button(action: {
                        withAnimation(.easeIn(duration: 0.25)){
                            index = 0.0
                        }
                    }, label: {
                        Image(systemName: "house.fill").resizable().foregroundColor(Color.white).frame(width: 20,height: 20)
                    })
                    Spacer()
                    Button(action: {
                        withAnimation(.easeIn(duration: 0.25)){
                            index = 1.0
                        }
                    }, label: {
                        Image(systemName: "bag").resizable().foregroundColor(Color.white).frame(width: 20,height: 20)
                    })
                    Spacer()
                    Button(action: {
                        withAnimation(.easeIn(duration: 0.25)){
                            index = 2.0
                        }
                    }, label: {
                        Image(systemName: "magnifyingglass").resizable().foregroundColor(Color.white).frame(width: 20,height: 20)
                    })
                    Spacer()
                    Button(action: {
                        withAnimation(.easeIn(duration: 0.25)){
                            index = 3.0
                        }
                    }, label: {
                        Image(systemName: "suit.heart").resizable().foregroundColor(Color.white).frame(width: 20,height: 20)
                    })
                    Spacer()
                }
              
                
                
                
             
           
            }.frame(width: screenSize.width*0.95, height: screenSize.height*0.08).background( Color( red: 53/255, green: 106/255, blue: 126/255, opacity: 1.0)).cornerRadius(14).offset(y: screenSize.height*0.42).shadow(radius: 10)
        
        }.background(Color.white)
    .navigationBarBackButtonHidden(false).navigationBarHidden(true)
        
    }

    

struct Screens_Previews: PreviewProvider {
    static var previews: some View {
        Screens()
    }
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
