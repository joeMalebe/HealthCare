//
//  MockData.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/08.
//

import Foundation

let jsonData = """
{
   "categories":[
      {
         "id":0,
         "name":"Cardiology",
         "picture":"images/categories/cardiology"
      },
      {
         "id":1,
         "name":"Dentistry",
         "picture":"images/categories/dentistry"
      },
      {
         "id":2,
         "name":"Neurology",
         "picture":"images/categories/neurology"
      },
      {
         "id":3,
         "name":"Orthopedics",
         "picture":"images/categories/orthopedics"
      },
      {
         "id":4,
         "name":"Radiology",
         "picture":"images/categories/radiology"
      },
{
         "id":5,
         "name":"Endocrinology",
         "picture":"images/categories/endocrinology"
      },
{
         "id":6,
         "name":"Family Medicine",
         "picture":"images/categories/family medicine"
      },
{
         "id":7,
         "name":"Dermatology",
         "picture":"images/categories/dermatology"
      }
   ],
   "doctors":[
   {
      "address": "Rua dos Três Irmãos, São Paulo, Brazil 05315",
      "biography": "A renowned pediatrician with 10 years of experience in child healthcare, known for her gentle approach and commitment to child welfare.",
      "experience": 10,
      "id": 4,
      "location": {
         "latitude": -23.550520,
         "longitude": -46.633308
      },
      "mobile": "00551123456789",
      "name": "Dr. Mariana Oliveira",
      "patients": "500+",
      "picture": "images/doctors/Dr. Mariana Oliveira",
      "rating": 4.4,
      "site": "http://www.spkidshealth.com",
      "special": "Pediatrics"
   },
      {
         "address":"8502 Preston Rd, Inglewood, Maine 98380",
         "biography":"A board-certified with over 25 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
         "experience":20,
         "id":0,
         "location":{
            "latitude":-26.180166,
            "longitude":27.994932
         },
         "mobile":"00123456789",
         "name":"Dr. Michael Roberts",
         "patients":"1200+",
         "picture":"images/doctors/Dr. Michael Roberts",
         "rating":4.2,
         "site":"http://www.test.com",
         "special":"Orthopedics"
      },
         {
            "address": "25 King Faisal Rd, Nairobi, Kenya",
            "biography": "An accomplished neurologist with 18 years of experience, specializing in treating neurological disorders like epilepsy and migraines. Known for a compassionate, patient-centered approach.",
            "experience": 18,
            "id": 3,
            "location": {
               "latitude": -1.292066,
               "longitude": 36.821945
            },
            "mobile": "00254673829282",
            "name": "Dr. Aisha Okello",
            "patients": "1100+",
            "picture": "images/doctors/Dr. Aisha Okello",
            "rating": 4.7,
            "site": "http://www.neurokenya.org",
            "special": "Neurology"
         },
   {
      "address": "734 Gangnam-daero, Gangnam-gu, Seoul, South Korea",
      "biography": "A dermatologist with 13 years of experience, specializing in skincare treatments and cosmetic dermatology. Focused on helping patients achieve healthy, radiant skin.",
      "experience": 13,
      "id": 6,
      "location": {
         "latitude": 37.517236,
         "longitude": 127.047325
      },
      "mobile": "00822123456789",
      "name": "Dr. Soo-Young Park",
      "patients": "1300+",
      "picture": "images/doctors/Dr. Soo-Young Park",
      "rating": 4.6,
      "site": "http://www.soodermatology.co.kr",
      "special": "Dermatology"
   },
     
      null,
      {
         "address":"8502 Preston Rd, Inglewood, Maine 98380",
         "biography":"A board-certified with over 3 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
         "experience":3,
         "id":4,
         "location":{
                     "latitude": -26.204103,
                     "longitude": 28.047305
         },
         "mobile":"00123456789",
         "name":"Dr. Jessica Wyne",
         "patients":"500+",
         "picture":"images/doctors/Dr. Jessica Wyne",
         "rating":4.1,
         "site":"http://www.test.com",
         "special":"Radiology"
      },
{
      "address": "4575 Adams Blvd, Johannesburg, Gauteng 2001",
      "biography": "A dedicated general practitioner with 15 years of experience in family medicine. Known for a holistic approach to healthcare and a passion for public health initiatives.",
      "experience": 15,
      "id": 1,
      "location": {
            "latitude":-26.183866,
            "longitude":27.993132
         
      },
      "mobile": "002738473829",
      "name": "Dr. Thabo Mokoena",
      "patients": "900+",
      "picture": "images/doctors/Dr. Thabo Mokoena",
      "rating": 4.5,
      "site": "http://www.thabomokoenahealth.co.za",
      "special": "Family Medicine"
   },
      {
         "address":"8502 Preston Rd, Inglewood, Maine 98380",
         "biography":"A board-certified with over 20 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
         "experience":20,
         "id":5,
         "location":{
                     "latitude": 12.971599,
                     "longitude": 77.594566
         },
         "mobile":"00123456789",
         "name":"Dr. Richard Lee",
         "patients":"500+",
         "picture":"images/doctors/Dr. Richard Lee",
         "rating":4.5,
         "site":"http://www.test.com",
         "special":"Dentistry"
      },

   {
      "address": "32 Glover Avenue, Accra, Ghana",
      "biography": "A leading cardiologist with 12 years of experience, specializing in heart health and non-invasive cardiac procedures. Committed to improving patient outcomes in Ghana.",
      "experience": 12,
      "id": 2,
      "location": {
         "latitude": 5.603717,
         "longitude": -0.187000
      },
      "mobile": "0023334578290",
      "name": "Dr. Kwame Addo",
      "patients": "700+",
      "picture": "images/doctors/Dr. Kwame Addo",
      "rating": 4.6,
      "site": "http://www.kcardio.com",
      "special": "Cardiology"
   },
      {
         "address":"8502 Preston Rd, Inglewood, Maine 98380",
         "biography":"A board-certified with over 15 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
         "experience":4,
         "id":1,
         "location":{
            "latitude":-26.185666,
            "longitude":27.987432
         },
         "mobile":"00123456789",
         "name":"Dr. Sarah Thompson",
         "patients":"500+",
         "picture":"images/doctors/Dr. Sarah Thompson",
         "rating":4.5,
         "site":"http://www.test.com",
         "special":"Cardiology"
      },
   
   {
      "address": "21 Residency Road, Bangalore, India",
      "biography": "A highly experienced endocrinologist with 22 years of experience in managing diabetes and other metabolic disorders. Known for cutting-edge treatments and personalized care.",
      "experience": 22,
      "id": 5,
      "location": {
            "latitude":-26.177366,
            "longitude":27.985932
      },
      "mobile": "00918823456789",
      "name": "Dr. Arun Gupta",
      "patients": "2000+",
      "picture": "images/doctors/Dr. Arun Gupta",
      "rating": 4.8,
      "site": "http://www.diabetescare.in",
      "special": "Endocrinology"
   },
         {
            "address":"8502 Preston Rd, Inglewood, Maine 98380",
            "biography":"A board-certified with over 15 years of experience, specializing in heart conditions such as coronary artery disease and arrhythmias. Known for patient-centered care and a commitment to the latest medical advancements",
            "experience":6,
            "id":2,
            "location":{
               "latitude":-26.178266,
               "longitude":27.991732
            },
            "mobile":"00123456789",
            "name":"Dr. David Johnson",
            "patients":"500+",
            "picture":"images/doctors/Dr. David Johnson",
            "rating":4.2,
            "site":"http://www.test.com",
            "special":"Neurology"
         }
   ]
}

""".data(using: .utf8)!
