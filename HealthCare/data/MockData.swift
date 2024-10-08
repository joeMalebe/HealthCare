//
//  MockData.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/08.
//

import Foundation

let jsonData = """
{
    {
      "Category": [
        {
          "Id": 0,
          "Name": "Cardiology",
          "Picture": "images/categories/Cardiology"
        },
        {
          "Id": 1,
          "Name": "Dentistry",
          "Picture": "images/categories/Dentistry"
        },
        {
          "Id": 2,
          "Name": "Neurology",
          "Picture": "images/categories/Neurology"
        },
        {
          "Id": 3,
          "Name": "Orthopedics",
          "Picture": "images/categories/Orthopedics"
        },
        {
          "Id": 4,
          "Name": "Radiology",
          "Picture": "images/categories/Radiology"
        }
      ],
      "Doctors": [
        {
          "Address": "8502 Preston Rd, Inglewood, Maine 98380",
          "Biography": "A board-certified with over 25 years of experience,  specializing in heart conditions such as coronary artery  disease and arrhythmias. Known for patient-centered care  and a commitment to the latest medical advancements",
          "Expriense": 20,
          "Id": 0,
          "Location": "http://maps.google.com/maps?q=loc:31.995801008207952,44.31452133516133",
          "Mobile": "00123456789",
          "Name": "Dr. Michael Roberts",
          "Patiens": "1200+",
          "Picture": "images/doctors/Dr. Michael Roberts",
          "Rating": 4.2,
          "Site": "http://www.test.com",
          "Special": "Orthopedics"
        },
        {
          "Address": "8502 Preston Rd, Inglewood, Maine 98380",
          "Biography": "A board-certified with over 15 years of experience,  specializing in heart conditions such as coronary artery  disease and arrhythmias. Known for patient-centered care  and a commitment to the latest medical advancements",
          "Expriense": 4,
          "Id": 1,
          "Location": "http://maps.google.com/maps?q=loc:31.995801008207952,44.31452133516133",
          "Mobile": "00123456789",
          "Name": "Dr. Sarah Thompson",
          "Patiens": "500+",
          "Picture": "images/doctors/Dr. Sarah Thompson",
          "Rating": 4.5,
          "Site": "http://www.test.com",
          "Special": "Cardiology"
        },
        {
          "Address": "8502 Preston Rd, Inglewood, Maine 98380",
          "Biography": "A board-certified with over 15 years of experience,  specializing in heart conditions such as coronary artery  disease and arrhythmias. Known for patient-centered care  and a commitment to the latest medical advancements",
          "Expriense": 6,
          "Id": 2,
          "Location": "http://maps.google.com/maps?q=loc:31.995801008207952,44.31452133516133",
          "Mobile": "00123456789",
          "Name": "Dr. David Johnson",
          "Patiens": "500+",
          "Picture": "images/doctors/Dr. David Johnson",
          "Rating": 4.2,
          "Site": "http://www.test.com",
          "Special": "Neurology"
        },
        null,
        {
          "Address": "8502 Preston Rd, Inglewood, Maine 98380",
          "Biography": "A board-certified with over 3 years of experience,  specializing in heart conditions such as coronary artery  disease and arrhythmias. Known for patient-centered care  and a commitment to the latest medical advancements",
          "Expriense": 3,
          "Id": 4,
          "Location": "http://maps.google.com/maps?q=loc:31.995801008207952,44.31452133516133",
          "Mobile": "00123456789",
          "Name": "Dr. Jessica Wyne",
          "Patiens": "500+",
          "Picture": "images/doctors/Dr. Jessica Wyne",
          "Rating": 4.1,
          "Site": "http://www.test.com",
          "Special": "Radiology Specialist"
        },
        {
          "Address": "8502 Preston Rd, Inglewood, Maine 98380",
          "Biography": "A board-certified with over 20 years of experience,  specializing in heart conditions such as coronary artery  disease and arrhythmias. Known for patient-centered care  and a commitment to the latest medical advancements",
          "Expriense": 20,
          "Id": 5,
          "Location": "http://maps.google.com/maps?q=loc:31.995801008207952,44.31452133516133",
          "Mobile": "00123456789",
          "Name": "Dr. Richard Lee",
          "Patiens": "500+",
          "Picture": "images/doctors/Dr. Richard Lee",
          "Rating": 4.5,
          "Site": "http://www.test.com",
          "Special": "Dentistry"
        }
      ]
    }
""".data(using: .utf8)!
