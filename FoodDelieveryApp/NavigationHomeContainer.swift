//
//  NavigationHomeContainer.swift
//  FoodDelieveryApp
//
//  Created by Ahmed Ayman on 19/02/2022.
//

import SwiftUI

struct NavigationHomeContainer: View {
    
    
   
    var body: some View {
       
        Screen1()
        
    }
}

struct NavigationHomeContainer_Previews: PreviewProvider {
    static var previews: some View {
        NavigationHomeContainer()
    }
}

//extension View{
//    
//    func popupNavigationView<Content: View>(show: Binding<Bool>,@ViewBuilder content: @escaping ()->Content) ->some View{
//        
//        return self
//            .overlay
//            {
//                if show.wrappedValue{
//                    GeometryReader{
//                        proxy in
//                        
//                        let size = proxy.size
//                        
//                        NavigationView{
//                            
//                        }.frame(width: size.width, height: size.height, alignment: .center)
//                    }
//                }
//            }
//        
//    }
//}
