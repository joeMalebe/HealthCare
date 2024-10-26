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
    @StateObject var themeManager = ThemeManager()
    @Environment(\.dismiss) private var dismiss
    @State private var shouldNavigate = false
    @State private var isDetailVisible: Bool = false
    @State private var mapSelection: MKMapItem?
    @State private var selectedDocter: Doctor?
    @State private var position: MapCameraPosition = .region(.init(center: CLLocationCoordinate2D(latitude: -26.180866457809795, longitude: 27.98946299228406), span: .init(latitudeDelta: 0.0180, longitudeDelta: 0.0180)))
    
    var body: some View {
        let mapItems  = doctors.map {
           let doctorMarker =  MKMapItem(placemark: .init(coordinate:  getCoordinate(location: $0.location
                                                                                      )))
           doctorMarker.name = $0.name
           return doctorMarker
        } as [MKMapItem]
        
        ZStack(alignment:.topLeading) {
            NavigationLink(isActive: $shouldNavigate, destination: {
                if(selectedDocter != nil) {
                    DoctorDetailScreen(doctor: selectedDocter!)
                }
            }, label: {
                
            })

            Map(position: $position, selection: $mapSelection) {
                
                ForEach(mapItems, id: \.self) {
                                Marker(item: $0)
                            }
            }.onChange(of: mapSelection, { oldValue, newValue in
                           isDetailVisible = newValue != nil
                 
                selectedDocter = getSelectedDoctorBy(name: newValue?.placemark.name
                                                 ,doctors: doctors)
            })
            .sheet(isPresented: $isDetailVisible, content: {
                MapDetailView(doctor: doctors.first!,doctors:doctors, selected: $isDetailVisible, showParentNavigation: { doctorProfile in
                    isDetailVisible = false
                    shouldNavigate = true
                    selectedDocter = doctorProfile
                }, mapItem: $mapSelection )
                    .presentationDetents([.height(180)])
                    .presentationBackgroundInteraction(
                        .enabled(upThrough: .height(180)))
                    .presentationCornerRadius(12)
                        })

            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left").frame(width: 32, height: 32).tint(themeManager.selectedTheme.primary)
            }.frame(width: 32,height: 32).buttonStyle(.bordered).clipShape(RoundedRectangle(cornerRadius: 12)).tint(themeManager.selectedTheme.primary).padding(40)
            
            

                
        }.ignoresSafeArea().navigationBarBackButtonHidden(true)
    
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
    location:Location(latitude: -26.177366,longitude:27.985932),
    mobile: "00123456789",
    name: "Dr. sdad ffff",
    patients: "1200+",
    picture: "images/doctors/Dr. Michael Roberts",
    rating: 4.2,
    site: "http://www.test.com",
    special: "Orthopedics"
)])
}
