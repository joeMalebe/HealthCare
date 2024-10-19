//
//  MapDetailView.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/18.
//

import MapKit
import SwiftUI

struct MapDetailView : View {
    let doctor: Doctor
    let doctors: [Doctor]
    @Binding var selected: Bool
    @Binding var mapItem: MKMapItem?
    
    var body: some View {
        ZStack{
                let doctor = getSelectedDoctorBy(name: mapItem?.placemark.name
                                                 , doctors: doctors)
                if(mapItem != nil) {
                    DoctorItem(doctor: doctor!).padding()
                }
        }
    }
}

#Preview{
    
    MapDetailView(doctor: Doctor(
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
    ), doctors:  [Doctor(
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
        location:Location(latitude: -26.177366,longitude:27.985932),
        mobile: "00123456789",
        name: "Dr. sdad ffff",
        patients: "1200+",
        picture: "images/doctors/Dr. Michael Roberts",
        rating: 4.2,
        site: "http://www.test.com",
        special: "Orthopedics"
    )],
                  selected: .constant(true),mapItem: .constant(nil))
}

extension MapDetailView {
    
        func getSelectedDoctorBy(name: String?, doctors: [Doctor]) -> Doctor? {
       return doctors.first { Doctor in
            Doctor.name == name
       }
    }
}
