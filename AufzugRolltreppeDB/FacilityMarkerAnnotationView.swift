//
//  FacilityMarkerAnnotationView.swift
//  AufzugRolltreppeDB
//
//  Created by Teske, Jakob (415) on 21.08.18.
//  Copyright © 2018 Jakob Teske. All rights reserved.
//

import UIKit
import MapKit

class FacilityMarkerAnnotationView: MKMarkerAnnotationView {

    override var annotation: MKAnnotation? {
        willSet {
            guard let facility = newValue as? Facility else {
                return
            }
            canShowCallout = true
            calloutOffset = CGPoint(x: -5, y: 5)
            rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            markerTintColor = facility.type == FacilityType.ELEVATOR ? UIColor.blue : UIColor.cyan
            glyphText = facility.type == FacilityType.ELEVATOR ? "E" : "A"
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
