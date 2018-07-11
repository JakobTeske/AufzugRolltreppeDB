//
//  Elevator.swift
//  AufzugRolltreppeDB
//
//  Created by Jakob Teske on 10.06.18.
//  Copyright © 2018 Jakob Teske. All rights reserved.
//

import Foundation

struct Facility {
    let equipmentnumber: Int
    let type: FacilityType
    let description: String
    let lat: Double
    let lon: Double
    let state: FacilityState
    let stationnumber: Int
    
    init?(fromJson json: [String: Any]) {
        guard let equipmentnumber = json["equipmentnumber"] as? Int,
              let type = json["type"] as? String,
              let description = json["description"] as? String,
              let lat = json["geocoordX"] as? Double,
              let lon = json["geocoordY"] as? Double,
              let state = json["state"] as? String,
              let stationnumber = json["stationnumber"] as? Int
        else { return nil }
        guard let facilityType = FacilityType(rawValue: type),
              let facilityState = FacilityState(rawValue: state)
            else { return nil}
        self.equipmentnumber = equipmentnumber
        self.type = facilityType
        self.description = description
        self.lat = lat
        self.lon = lon
        self.state = facilityState
        self.stationnumber = stationnumber
    }
}

enum FacilityType: String {
    case ELEVATOR
    case ESCALATOR
}

enum FacilityState: String {
    case ACTIVE
    case INACTIVE
    case UNKNOWN
}
