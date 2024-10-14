//
//  ThemeManager.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/14.
//

import SwiftUI

/**
 Theme Manager
 */
class ThemeManager: ObservableObject {
    @Published var selectedTheme: ThemeProtocol = Main()
    
    func setTheme(_ theme: ThemeProtocol) {
        selectedTheme = theme
    }
}

struct Main: ThemeProtocol {
    var primary: Color{ return  Color("colors/primary")}
    
    var secondary: Color { return  Color("colors/secondary")}
    
    var accent: Color { return  Color("colors/accent")}
    
    var onBackground: Color { return  Color("colors/onBackground")}
    
    var onPrimary: Color { return  Color("colors/onPrimary")}
    
    var background: Color { return  Color("colors/background")}
    
    var onSecondary: Color { return  Color("colors/onSecondary")}
    
    
    
}
