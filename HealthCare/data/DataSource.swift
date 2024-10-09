//
//  DataSource.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/08.
//

import Foundation

struct Category: Codable, Hashable {
    let id: Int
    let name: String
    let picture: String
}

struct Doctor: Codable, Hashable {
    let address: String
    let biography: String
    let experience: Int
    let id: Int
    let location: String
    let mobile: String
    let name: String
    let patients: String
    let picture: String
    let rating: Double
    let site: String
    let special: String
}

// Sample structure that holds categories and doctors
struct MedicalData: Codable, Hashable {
    let categories: [Category]
    let doctors: [Doctor?]
}

class MedicalDatabase {
    
    private var categories: [Category] = []
    private var doctors: [Doctor] = []
    
    init() {
        loadMedicalData()
    }
    
    func loadMedicalData() {
        do {
            let medicalData = try JSONDecoder().decode(MedicalData.self, from: jsonData)
            categories = medicalData.categories
            
            doctors = medicalData.doctors.compactMap{$0}
            print(medicalData)
        } catch {
            print("Error decoding JSON: \(error)")
        }
    }
    
    func getAllCategories() -> [Category]{
        return categories
    }
    
    func getAllDoctors() -> [Doctor]{
        return doctors
    }
}
