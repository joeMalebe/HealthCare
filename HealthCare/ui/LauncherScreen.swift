//
//  LauncherScreen.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/08.
//

import SwiftUI

struct LauncherScreen: View {
    var body: some View{
        ZStack {
            Color(Color.primary).ignoresSafeArea(.all)
            Image("halo").resizable().scaledToFit().offset(x: 0, y: -180)
            
            
            VStack{
                HStack {
                    VStack(alignment: .leading) {
                        Text("Premium \nHealth care. \nAt your fingertips").font(.largeTitle).padding(.leading,0).padding(.top,0)
                            .colorInvert()
                        Button(action: {}, label: {
                            Text("Get started").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        }).buttonStyle(.borderedProminent).tint(.accentColor)
                    }.padding(32)
                    Spacer()
                }
                
                
                Image("splashScreenWomen")
                    .resizable()
                    .scaledToFit()
                    .offset(CGSize(width: 30, height: 50.0))
                
            }
        }
    }
}

#Preview {
    LauncherScreen()
}
