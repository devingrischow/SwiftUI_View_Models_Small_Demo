//
//  LocationsViewModel.swift
//  WithViewModelDemos
//
//  Created by Devin Grischow on 11/11/24.
//

import SwiftUI

class LocationsViewModel:ObservableObject {
    
    //declare published var
    @Published var locationsDataModel = LocationsDataModel()
    
    
    //generate new location
    func generateRandomLocationItem() -> LocationData {
        let randomLat = Double.random(in: -90..<90)//max lat ranges
        let randomLong = Double.random(in: -180..<180)//max long ranges
        
        return LocationData(long: randomLong, lat: randomLat)
    }

    
    
}

