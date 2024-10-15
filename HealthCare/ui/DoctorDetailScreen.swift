//
//  DoctorDetailScreen.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/12.
//

import SwiftUI

struct DoctorDetailScreen : View {
    @StateObject var themeManager = ThemeManager()
    let doctor: Doctor
    var body: some View {
            ZStack(alignment: .bottom) {
                ZStack(alignment: .top) {
                    Color(themeManager.selectedTheme.primary)
                    Image(doctor.picture).resizable().scaledToFit()
                }
                ZStack {
                    UnevenRoundedRectangle(topLeadingRadius: 50.0,topTrailingRadius: 50.0).foregroundColor(themeManager.selectedTheme.background).frame(maxHeight: 420)
                    DoctorDetails(doctor: doctor)
                }
            }.navigationTitle(doctor.name)
        
    }
}

struct DoctorDetails: View {
    @StateObject var themeManager = ThemeManager()
    let doctor: Doctor
    var body: some View {
        VStack( alignment: .leading,spacing: 16) {
            let iconSize = 24.0
            
            Text(doctor.special).font(.headline)
            HStack {
                
                Image("images/location 1").resizable().renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/).foregroundColor(themeManager.selectedTheme.primary).scaledToFit().frame(maxWidth: iconSize,maxHeight: iconSize)
                
                Text(doctor.address).font(.caption).foregroundStyle(themeManager.selectedTheme.primary)
            }
            
            
            HStack(alignment: .center, spacing: 8) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Patients").font(.subheadline).bold().foregroundStyle(themeManager.selectedTheme.onBackground)
                    Text(doctor.patients).font(.subheadline).foregroundStyle(themeManager.selectedTheme.primary)
                }
                Spacer()
                Divider()
                Spacer()
                
                VStack(alignment: .center, spacing: 8) {
                    Text("Experience").font(.subheadline).bold().foregroundStyle(themeManager.selectedTheme.onBackground)
                    Text("\(doctor.experience) years").font(.subheadline).foregroundStyle(themeManager.selectedTheme.primary)
                }
                Spacer()
                Divider()
                Spacer()
                VStack(alignment: .trailing, spacing: 8) {
                    Text("Rating").font(.subheadline).bold().foregroundStyle(themeManager.selectedTheme.onBackground)
                    
                    HStack {
                        Image("images/star").resizable().scaledToFit().frame(minWidth: iconSize - 4, maxWidth: iconSize - 4)
                        Text(doctor.rating.formatted()).font(.subheadline).foregroundStyle(themeManager.selectedTheme.primary)
                    }
                }
            }.frame(maxHeight: 50,alignment: .trailing)
            
            
            VStack(alignment: .leading) {
                Text("Biography").font(.subheadline).bold().foregroundStyle(themeManager.selectedTheme.onBackground)
                Text(doctor.biography).font(.subheadline).foregroundStyle(themeManager.selectedTheme.onBackground)
            }
            
            HStack(spacing: 16) {
                CaptionedIcon(picture: "link", caption: "Website",isSystemIcon: true, size: 40.0)
                CaptionedIcon(picture: "phone", caption: "Call",isSystemIcon: true, size: 40.0)
                CaptionedIcon(picture: "message", caption: "Chat",isSystemIcon: true, size: 40.0)
            }
            Button("Book appointment") {
                
            }.buttonStyle(.borderedProminent).tint(themeManager.selectedTheme.primary)
        }.padding()
    }
}

#Preview {
    DoctorDetailScreen(doctor:  Doctor(
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
    ))
}
