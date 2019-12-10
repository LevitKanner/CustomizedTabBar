//
//  PopUpMenu.swift
//  CustomTabBar
//
//  Created by Levit Kanner on 10/12/2019.
//  Copyright © 2019 Levit Kanner. All rights reserved.
//

import SwiftUI

struct PopUpMenu: View {
    
    var body: some View {
        
        HStack(spacing: 50){
            ZStack{
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 70 , height: 70)
                Image(systemName: "camera")
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                    .foregroundColor(.white)
                    .frame(width: 70 , height: 70)
            }
            
            ZStack{
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 70 , height: 70)
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                    .foregroundColor(.white)
                    .frame(width: 70 , height: 70)
            }
        }
        .transition(.scale)
    }
}

struct PopUpMenu_Previews: PreviewProvider {
    static var previews: some View {
        PopUpMenu()
    }
}
