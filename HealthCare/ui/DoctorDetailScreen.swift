//
//  DoctorDetailScreen.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/12.
//

import SwiftUI

struct DoctorDetailScreen : View {
    let doctor: Doctor
    var body: some View {
        NavigationView {
            VStack( alignment: .leading,spacing: 16) {
                let iconSize = 24.0
                Text(doctor.name).font(.title)
                Text(doctor.special).font(.subheadline)
                HStack {
                    
                    Image("images/location 1").resizable().renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/).foregroundColor(.primary).scaledToFit().frame(maxWidth: iconSize,maxHeight: iconSize)
                    
                    Text(doctor.address).font(.subheadline).foregroundStyle(.primary)
                }
                
                
                HStack(alignment: .center, spacing: 16) {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Patients").font(.subheadline).bold()
                        Text(doctor.patients).font(.subheadline).foregroundStyle(.primary)
                    }
                    Spacer()
                    Divider().frame(width: 1)
                    Spacer()
                    VStack(alignment: .center, spacing: 16) {
                        Text("Experience").font(.subheadline).bold()
                        Text("\(doctor.experience) years").font(.subheadline).foregroundStyle(.primary)
                    }
                    Spacer()
                    Divider().frame(width: 1)
                    Spacer()
                    VStack(alignment: .trailing, spacing: 16) {
                        Text("Rating").font(.subheadline).bold()
                        
                        HStack {
                            Image("images/star").resizable().scaledToFit().frame(minWidth: iconSize - 4, maxWidth: iconSize - 4)
                            Text(doctor.rating.formatted()).font(.subheadline).foregroundStyle(.primary)
                        }
                    }
                }.scaledToFit().frame(alignment: .trailing)
                
                
                VStack(alignment: .leading) {
                    Text("Biography").font(.title2)
                    Text(doctor.biography).font(.body)
                }
                
                HStack(spacing: 16) {
                    CaptionedIcon(picture: "link", caption: "Website",isSystemIcon: true)
                    CaptionedIcon(picture: "phone", caption: "Call",isSystemIcon: true)
                    CaptionedIcon(picture: "message", caption: "Chat",isSystemIcon: true)
                }
                Button("Book appointment") {
                    
                }.buttonStyle(.borderedProminent).tint(.primary)
            }.padding()
            
        }
    }
}

#Preview {
    DoctorDetailScreen(doctor:  Doctor(
        address: "8502 Preston Rd, Inglewood, Maine 98380",
        biography: "A board-certified with over 25 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
        experience: 20,
        id: 0,
        location: "http://maps.google.com/maps?q=loc:31.995801008207952,44.31452133516133",
        mobile: "00123456789",
        name: "Dr. Michael Roberts",
        patients: "1200+",
        picture: "images/doctors/Dr. Michael Roberts",
        rating: 4.2,
        site: "http://www.test.com",
        special: "Orthopedics"
    ))
}
