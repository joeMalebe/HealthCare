//
//  Dashboard.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/08.
//

import SwiftUI


struct DashboardScreen : View {
    
    @State var search = ""
    let data = MedicalDatabase()
    var body: some View {
        
        
        
        ScrollView{
            
            HStack {
                VStack(alignment: .leading){
                    Text("Welcome, \(user.name)").font(.headline)
                    Text("How is your health?").font(.subheadline)
                }
                Spacer()
                Image("images/profile").resizable().scaledToFill().frame(width: 50,height: 50).clipShape(Circle())
            }
            
            ZStack(alignment: .bottom){
                Image("images/banner").resizable().scaledToFit()
                TextField("\(Image(systemName: "magnifyingglass")) Search doctors",text: $search).foregroundColor(.primary) .textFieldStyle(.roundedBorder).padding(.horizontal).offset(CGSize(width: 0, height: 10.0)) .shadow(radius: 10)
                
            }.scaledToFit()
            Spacer(minLength: 26)
        
            let categories: [Category] = data.getAllCategories()
            SpecialistsView(categories: categories)
            
        
            Text("Recently Visited Doctors")
            
            
        }
        
        
        
        
        
    }
}

#Preview {
    DashboardScreen()
}

struct User {
    let name: String
}

let user = User(name: "Sarah Abrahams")

struct SpecialistsView: View {
    let categories: [Category]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Specialists").font(.headline)
            ScrollView(.horizontal){
                LazyHStack(content: {
                    
                    ForEach(categories, id: \.self) { category in
                        VStack {
                            ZStack {
                                let size = 72.0
                                RoundedRectangle(cornerRadius: 10).frame(width: size,height: size).foregroundColor(.secondary).opacity(0.3)
                                Image(category.picture).resizable().renderingMode(  .template).foregroundColor(.primary).frame(width: size - 24,height: size - 24)
                                
                            }
                            Text(category.name).font(.caption)
                        }
                    }
                })
            }
            
            
            
            
        }
    }
}
