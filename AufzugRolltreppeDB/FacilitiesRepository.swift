//
//  AufzugRepository.swift
//  AufzugRolltreppeDB
//
//  Created by Teske, Jakob (415) on 11.07.18.
//  Copyright © 2018 Jakob Teske. All rights reserved.
//

import Foundation
import Promises

struct FacilitiesRespository {
    
    func getFacilities() -> Promise<[Facility]> {
        return Promise<[Facility]>(on: .main) {fulfill,reject in
            let dbApiUrl = URL(string: "https://adam.noncd.db.de/api/v1.0/facilities?")
            if let url = dbApiUrl {
                let task = URLSession.shared.dataTask(with: url, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
                    if let error = error {
                        reject(error)
                    } else {
                        fulfill(self.buildFacilityArrayFromJSON(data: data))
                    }
                })
                task.resume()
            }
        }
    }
    
    func buildFacilityArrayFromJSON(data: Data?) -> [Facility] {
        var facilities = [Facility]()
        if let data = data {
            let jsonData = try? JSONSerialization.jsonObject(with: data, options: [])
            if let array = jsonData as? [[String: Any]] {
                for element in array {
                    if let facility = Facility(fromJson: element) {
                        facilities.append(facility)
                    }
                }
            }
        }
        return facilities
    }
    //Rebuild with Promises
}
