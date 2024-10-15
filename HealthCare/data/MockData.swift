//
//  MockData.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/08.
//

import Foundation

let jsonData = """
{
   "categories": [
      {
         "id": 0,
         "name": "Cardiology",
         "picture": "images/categories/cardiology"
      },
      {
         "id": 1,
         "name": "Dentistry",
         "picture": "images/categories/dentistry"
      },
      {
         "id": 2,
         "name": "Neurology",
         "picture": "images/categories/neurology"
      },
      {
         "id": 3,
         "name": "Orthopedics",
         "picture": "images/categories/orthopedics"
      },
      {
         "id": 4,
         "name": "Radiology",
         "picture": "images/categories/radiology"
      }
   ],
   "doctors": [
      {
         "address": "8502 Preston Rd, Inglewood, Maine 98380",
         "biography": "A board-certified with over 25 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
         "experience": 20,
         "id": 0,
         "location": {latitude: -26.180166,longitude:27.994932}",
         "mobile": "00123456789",
         "name": "Dr. Michael Roberts",
         "patients": "1200+",
         "picture": "images/doctors/Dr. Michael Roberts",
         "rating": 4.2,
         "site": "http://www.test.com",
         "special": "Orthopedics"
      },
      {
         "address": "8502 Preston Rd, Inglewood, Maine 98380",
         "biography": "A board-certified with over 15 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
         "experience": 4,
         "id": 1,
         "location": {latitude: -26.185666,longitude:27.987432}",
         "mobile": "00123456789",
         "name": "Dr. Sarah Thompson",
         "patients": "500+",
         "picture": "images/doctors/Dr. Sarah Thompson",
         "rating": 4.5,
         "site": "http://www.test.com",
         "special": "Cardiology"
      },
      {
         "address": "8502 Preston Rd, Inglewood, Maine 98380",
         "biography": "A board-certified with over 15 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
         "experience": 6,
         "id": 2,
         "location": {latitude: -26.178266,longitude:27.991732}",
         "mobile": "00123456789",
         "name": "Dr. David Johnson",
         "patients": "500+",
         "picture": "images/doctors/Dr. David Johnson",
         "rating": 4.2,
         "site": "http://www.test.com",
         "special": "Neurology"
      },
      null,
      {
         "address": "8502 Preston Rd, Inglewood, Maine 98380",
         "biography": "A board-certified with over 3 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
         "experience": 3,
         "id": 4,
         "location": {latitude: -26.183866,longitude:27.993132}",
         "mobile": "00123456789",
         "name": "Dr. Jessica Wyne",
         "patients": "500+",
         "picture": "images/doctors/Dr. Jessica Wyne",
         "rating": 4.1,
         "site": "http://www.test.com",
         "special": "Radiology Specialist"
      },
      {
         "address": "8502 Preston Rd, Inglewood, Maine 98380",
         "biography": "A board-certified with over 20 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
         "experience": 20,
         "id": 5,
         "location": {latitude: -26.177366,longitude:27.985932}",
         "mobile": "00123456789",
         "name": "Dr. Richard Lee",
         "patients": "500+",
         "picture": "images/doctors/Dr. Richard Lee",
         "rating": 4.5,
         "site": "http://www.test.com",
         "special": "Dentistry"
      }
   ]
}

""".data(using: .utf8)!
