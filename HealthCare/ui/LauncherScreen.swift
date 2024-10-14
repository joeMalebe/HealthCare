//
//  LauncherScreen.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/08.
//

import SwiftUI


struct LauncherScreen: View {
    var body: some View{
        @StateObject var themeManager = ThemeManager()

        NavigationView{
            ZStack {
                Color(themeManager.selectedTheme.primary).ignoresSafeArea(.all)
                Image("images/halo").resizable().scaledToFit().offset(x: 0, y: -180)
                
                
                VStack{
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Premium \nHealth care. \nAt your fingertips").font(.largeTitle).padding(.leading,0).padding(.top,0)
                                .foregroundColor(themeManager.selectedTheme.onPrimary)
                            
                            NavigationLink("Get started", destination: {
                                DashboardScreen()
                            }).buttonStyle(.borderedProminent).tint(themeManager.selectedTheme.accent).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            
                            
                        }.padding(32)
                        Spacer()
                    }
                    
                    Image("images/splashScreenWomen")
                        .resizable()
                        .scaledToFit()
                        .offset(CGSize(width: 30, height: 50.0))
                    
                }
            }
        }
    }
}

#Preview {
    LauncherScreen()
}
