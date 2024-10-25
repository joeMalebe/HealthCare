//
//  Dashboard.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/08.
//

import SwiftUI


struct DashboardScreen : View {
    @StateObject var themeManager = ThemeManager()
    @State var search = ""
    let data = MedicalDatabase()
    var body: some View {
        ScrollView{
            
            HStack {
                VStack(alignment: .leading){
                    Text("Welcome, \(user.name)").font(.headline).foregroundStyle(themeManager.selectedTheme.onBackground)
                    Text("How is your health?").font(.subheadline).foregroundStyle(themeManager.selectedTheme.onBackground)
                }
                Spacer()
                Image("images/profile").resizable().scaledToFill().frame(width: 50,height: 50).clipShape(Circle())
            }.padding(.vertical)
            
            ZStack(alignment: .bottom){
                NavigationLink(destination: MapDoctors(doctors: data.getAllDoctors()),  label: {
                    Image("images/banner").resizable().scaledToFit()
                })
                
                TextField("\(Image(systemName: "magnifyingglass")) Search doctors",text: $search).overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(themeManager.selectedTheme.primary)
                ).foregroundColor(themeManager.selectedTheme.primary) .textFieldStyle(.roundedBorder).padding(.horizontal).offset(CGSize(width: 0, height: 10.0)) .shadow(radius: 10)
                
            }.scaledToFit()
            Spacer(minLength: 26)
            
            let categories: [Category] = data.getAllCategories()
            
            let doctors = data.getAllDoctors()
            SpecialistsView(doctors:doctors,  categories: categories)
            
            VStack(alignment:.leading) {
                Text("Available today").font(.headline).foregroundStyle(themeManager.selectedTheme.onBackground)
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing:16, content: {
                        ForEach(doctors.filter({ Doctor in
                            Doctor.experience < 10
                        }), id: \.self) { doctor in
                            
                            NavigationLink(destination: DoctorDetailScreen(doctor: doctor)) { 
                                DoctorView(doctor:doctor)
                            }.buttonStyle(PlainButtonStyle())
                            
                        }
                    })
                }
            }.padding(.vertical)
        }.padding(.horizontal).navigationBarBackButtonHidden(true)
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
    @StateObject var themeManager = ThemeManager()
    let doctors: [Doctor]
    let categories: [Category]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Specialists").font(.headline).foregroundStyle(themeManager.selectedTheme.onBackground)
            ScrollView(.horizontal){
                LazyHStack(spacing: 16, content: {
                    
                    ForEach(categories, id: \.self) { category in
                        NavigationLink {
                            NearbyListScreen(doctors: doctors.filter({ Doctor in
                                Doctor.special == category.name
                            }),category:category.name)
                        } label: {
                            CaptionedIcon(picture: category.picture, caption: category.name)
                        }
                    }
                })
            }
        }.padding(.vertical)
    }
}

struct DoctorView: View {
    @StateObject var themeManager = ThemeManager()
    let doctor: Doctor
    let cornerRadius = 25.0
    let smallIconSize = 16.0
    let cardHeight = 250.0
    let cardWidth = 190.0
    
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).foregroundColor(themeManager.selectedTheme.background).shadow(radius: 2)
                VStack {
                    ZStack {
                        UnevenRoundedRectangle(topLeadingRadius: cornerRadius,topTrailingRadius: cornerRadius).foregroundColor(themeManager.selectedTheme.secondary).opacity(0.5)
                        Image(doctor.picture).resizable().scaledToFit()
                    }
                    
                    VStack(alignment: .leading) {
                        Text(doctor.name).font(.callout)
                        Text(doctor.special).font(.caption)
                        HStack{
                            Image("images/star").resizable().scaledToFit().frame(maxWidth: smallIconSize,maxHeight: smallIconSize)
                            Text(doctor.rating.formatted()).font(.caption).bold().foregroundStyle(themeManager.selectedTheme.onBackground)
                            Spacer()
                            Image("images/medal").resizable().scaledToFit().frame(maxWidth: smallIconSize,maxHeight: smallIconSize)
                            Text("\(doctor.experience.formatted()) years").font(.caption).bold().foregroundStyle(themeManager.selectedTheme.onBackground)
                        }
                    }.padding()
                }
            }
        }.frame(maxWidth: cardWidth,maxHeight: cardHeight)
    }
}

struct CaptionedIcon: View {
    @StateObject var themeManager = ThemeManager()
    let picture: String
    let caption: String
    var isSystemIcon = false
    var size = 72.0
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                RoundedRectangle(cornerRadius: 10).frame(width: size,height: size).foregroundColor(themeManager.selectedTheme.background).shadow(radius: 2)
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 10).frame(width: size,height: size).foregroundColor(themeManager.selectedTheme.secondary).opacity(0.5).shadow(radius: 6)
                    if(isSystemIcon) {
                        Image(systemName: picture).resizable().renderingMode(  .template).foregroundColor(themeManager.selectedTheme.primary).frame(width: size - 24,height: size - 24)
                    } else {
                        Image(picture).resizable().renderingMode(  .template).foregroundColor(themeManager.selectedTheme.primary).frame(width: size - 24,height: size - 24)
                    }
                    
                    
                }
            }
            Text(caption).font(.caption).foregroundStyle(themeManager.selectedTheme.onBackground)
        }
    }
}
