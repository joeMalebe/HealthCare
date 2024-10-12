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
            
            
            let doctor = data.getAllDoctors().first!
            let doctors = data.getAllDoctors()
            
            LazyHStack {
                
                VStack(alignment:.leading) {
                    Text("Recently Visited Doctors").font(.headline)
                    
                    
                    ExtractedView(doctor: doctor)
                }
            }
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

struct ExtractedView: View {
    let doctor: Doctor
    let cornerRadius = 25.0
    let smallIconSize = 20.0
    let cardHeight = 250.0
    let cardWidth = 180.0
    
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).foregroundColor(.white).shadow(radius: 2)
                VStack {
                    ZStack {
                        UnevenRoundedRectangle(topLeadingRadius: cornerRadius,topTrailingRadius: cornerRadius).foregroundColor(.secondary).opacity(0.2)
                        Image(doctor.picture).resizable().scaledToFit()
                    }
                    
                    VStack(alignment: .leading) {
                        Text(doctor.name).font(.callout)
                        Text(doctor.special).font(.caption)
                        HStack{
                            Image("images/star").resizable().scaledToFit().frame(maxWidth: smallIconSize,maxHeight: smallIconSize)
                            Text(doctor.rating.formatted()).font(.caption).bold()
                            Spacer()
                            Image("images/medal").resizable().scaledToFit().frame(maxWidth: smallIconSize,maxHeight: smallIconSize)
                            Text("\(doctor.experience.formatted()) years").font(.caption).bold()
                        }
                    }.padding()
                }
            }
        }.frame(maxWidth: cardWidth,maxHeight: cardHeight)
    }
}
