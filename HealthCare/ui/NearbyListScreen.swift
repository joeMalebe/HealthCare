//
//  NearbyListScreen.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/14.
//

import SwiftUI

struct NearbyListScreen : View{
    
    let doctors: [Doctor]
    var body: some View{
        
        ScrollView(.vertical) {
            LazyVStack(spacing: 16) {
                ForEach(doctors, id: \.self) { doctor in
                    
                    DoctorItem(doctor: doctor)
                }
            }.padding()
        }
    }
}


struct DoctorItem: View {
    @StateObject var themeManager = ThemeManager()
    let doctor: Doctor
    let iconSize = 16.0
    let size = 136.0
    var body: some View {
        ZStack(alignment:.leading) {
            RoundedRectangle(cornerRadius: 10).frame(maxHeight: size  ).foregroundStyle(themeManager.selectedTheme.background).shadow(radius: 3)
            
            
                HStack(alignment: .center) {
                    ZStack {
                        ZStack(alignment:.bottom) {
                            
                            RoundedRectangle(cornerRadius: 10).frame(width: size,height: size).foregroundColor(themeManager.selectedTheme.secondary).opacity(0.5)
                            
                            
                            Image(doctor.picture).resizable().foregroundColor(themeManager.selectedTheme.primary).frame(width: size - 4,height: size - 4)
                        }
                    }
                    VStack(alignment: .leading, spacing: 8){
                        VStack(alignment:.leading) {
                            Text(doctor.name).font(.headline).foregroundStyle(themeManager.selectedTheme.onBackground)
                            Text(doctor.special).font(.subheadline).foregroundStyle(themeManager.selectedTheme.onBackground)
                            
                        }
                        
                        LazyHStack( spacing: 8) {
                            let rating = Int(doctor.rating)
                            
                            ForEach(0...4, id: \.self) { count in
                                if(count < rating){ Image("images/star").resizable().frame(width: iconSize,height: iconSize)
                                } else { Image("images/star").renderingMode(.template).resizable().frame(width: iconSize,height: iconSize).foregroundStyle(themeManager.selectedTheme.starBackground)
                                }
                                
                            }
                        }.frame(alignment: .leading).scaledToFit()
                        Button() {
                            
                        } label: {
                            Text("Book Appointment")            }.buttonStyle(.borderedProminent).tint(themeManager.selectedTheme.secondary).controlSize(.regular).foregroundStyle(themeManager.selectedTheme.onSecondary)
                        
                    
                }.scaledToFit()
                
                
            }
        }
    }
}

#Preview {
    NearbyListScreen(doctors:  [Doctor(
        address: "8502 Preston Rd, Inglewood, Maine 98380",
        biography: "A board-certified with over 25 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
        experience: 20,
        id: 0,
        location:Location(latitude: -26.183866,longitude:27.993132),
        mobile: "00123456789",
        name: "Dr. Michael Roberts",
        patients: "1200+",
        picture: "images/doctors/Dr. Michael Roberts",
        rating: 4.2,
        site: "http://www.test.com",
        special: "Orthopedics"
    ),Doctor(
        address: "8502 Preston Rd, Inglewood, Maine 98380",
        biography: "A board-certified with over 25 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
        experience: 20,
        id: 0,
        location:Location(latitude: -26.183866,longitude:27.993132),
        mobile: "00123456789",
        name: "Dr. sdad ffff",
        patients: "1200+",
        picture: "images/doctors/Dr. Michael Roberts",
        rating: 4.2,
        site: "http://www.test.com",
        special: "Orthopedics"
    )])
}
