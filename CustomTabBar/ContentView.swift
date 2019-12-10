//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Levit Kanner on 10/12/2019.
//  Copyright © 2019 Levit Kanner. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewRouter = ViewRouter()
    @State private var showPopUp = false
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Spacer()
                if self.viewRouter.currentView == "home"{
                    Text("Home")
                }
                else{
                    Text("Settings")
                }
                Spacer()
                
                
                
                ZStack{
                    if self.showPopUp{
                        PopUpMenu()
                            .offset(y: -geometry.size.height/6)
                    }
                    
                    HStack{
                        Image(systemName: "house")
                            .resizable()
                            .scaledToFit()
                            .padding(20)
                            .frame(width: geometry.size.width/3 , height: 75)
                            .foregroundColor(self.viewRouter.currentView == "home" ? .black : .gray)
                            .onTapGesture {
                                self.viewRouter.currentView = "home"
                        }
                        
                        
                        
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 75 , height: 75)
                            
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75 , height: 75)
                                .foregroundColor(.blue)
                                .rotationEffect(Angle(degrees: self.showPopUp ? 90 : 0))
                        }
                        .onTapGesture {
                            withAnimation {
                                self.showPopUp.toggle()
                            }
                        }
                        .offset(y: -geometry.size.height/10/2)
                        
                        
                        
                        
                        Image(systemName: "gear")
                            .resizable()
                            .scaledToFit()
                            .padding(20)
                            .frame(width: geometry.size.width/3, height: 75)
                            .foregroundColor(self.viewRouter.currentView == "settings" ? .black : .gray)
                            .onTapGesture {
                                self.viewRouter.currentView = "settings"
                        }
                        
                    }
                    .frame(width: geometry.size.width , height:  geometry.size.height/10)
                    .background(Color.white.shadow(radius: 2))
                }
                
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
