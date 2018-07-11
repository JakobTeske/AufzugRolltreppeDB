//
//  FacilityDelegate.swift
//  AufzugRolltreppeDB
//
//  Created by Jakob Teske on 10.06.18.
//  Copyright © 2018 Jakob Teske. All rights reserved.
//

import Foundation

protocol FacilityDelegate {
    func receivedJsonFor(facilities data: Data?)
    func fetchingFacilitesFailedWith(error: Error?)
}
