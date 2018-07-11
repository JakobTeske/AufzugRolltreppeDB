//
//  FacilityViewController.swift
//  AufzugRolltreppeDB
//
//  Created by Jakob Teske on 16.06.18.
//  Copyright © 2018 Jakob Teske. All rights reserved.
//

import UIKit

class FacilityViewController: UIViewController {

    @IBOutlet weak var equipmentLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var coordinatesLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var stationnumberLabel: UILabel!
    
    var facility: Facility?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let facilityToPresent = facility {
            equipmentLabel.text = "Nummer: \(facilityToPresent.equipmentnumber)"
            typeLabel.text = "Typ: \(facilityToPresent.type.rawValue)"
            descriptionLabel.text = "Beschreibung: \(facilityToPresent.description)"
            coordinatesLabel.text = "\(facilityToPresent.lat),\(facilityToPresent.lon)"
            stateLabel.text = "Status: \(facilityToPresent.state.rawValue)"
            stationnumberLabel.text = "Bahnhofnr.: \(facilityToPresent.stationnumber)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
