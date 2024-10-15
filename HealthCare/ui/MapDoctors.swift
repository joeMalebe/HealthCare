//
//  MapDoctors.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/15.
//

import SwiftUI
import MapKit

struct MapDoctors: View {
    let doctors: [Doctor]
    @State var location = CLLocationCoordinate2D(latitude: -26.180866457809795, longitude: 27.98946299228406)
    var body: some View {
        
        
        
        Map() {
            ForEach(doctors, id: \.self) {doctor in
                Marker(doctor.name, coordinate: randomCoordinate(from:  getCoordinate(location: doctor.location)))
            }
        }
    }
}

#Preview {
 MapDoctors(doctors:  [Doctor(
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
