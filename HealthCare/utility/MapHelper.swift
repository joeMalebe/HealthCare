//
//  MapHelper.swift
//  HealthCare
//
//  Created by Malebe, Joe J on 2024/10/15.
//

import Foundation
import CoreLocation

func randomCoordinate(within radius : Double = 5.0, from coordinate: CLLocationCoordinate2D) -> CLLocationCoordinate2D {
    // Earth's radius in kilometers
    let earthRadius = 6371.0
    
    // Convert radius to radians
    let radiusInRadians = radius / earthRadius
    
    // Generate a random bearing (direction) between 0 and 360 degrees, convert to radians
    let bearing = Double.random(in: 0...360) * Double.pi / 180
    
    // Generate a random distance within the radius
    let distanceInRadians = radiusInRadians * sqrt(Double.random(in: 0...1))
    
    // Convert latitude and longitude from degrees to radians
    let lat1 = coordinate.latitude * Double.pi / 180
    let lon1 = coordinate.longitude * Double.pi / 180
    
    // Calculate the new latitude
    let lat2 = asin(sin(lat1) * cos(distanceInRadians) + cos(lat1) * sin(distanceInRadians) * cos(bearing))
    
    // Calculate the new longitude
    let lon2 = lon1 + atan2(sin(bearing) * sin(distanceInRadians) * cos(lat1),
                            cos(distanceInRadians) - sin(lat1) * sin(lat2))
    
    // Convert the latitude and longitude from radians back to degrees
    let newLatitude = lat2 * 180 / Double.pi
    let newLongitude = lon2 * 180 / Double.pi
    
    return CLLocationCoordinate2D(latitude: newLatitude, longitude: newLongitude)
}

func getCoordinate(location: Location) -> CLLocationCoordinate2D {
    return CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude
    )
}

// Example usage
let originalCoordinate = CLLocationCoordinate2D(latitude: -26.180866457809795, longitude: 27.98946299228406)
let randomCoord = randomCoordinate(within: 5, from: originalCoordinate)


