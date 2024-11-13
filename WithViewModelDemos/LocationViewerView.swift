//
//  LocationViewerView.swift
//  WithViewModelDemos
//
//  Created by Devin Grischow on 11/11/24.
//

import SwiftUI

struct LocationViewerView: View {
    
    //Initial Location Data
    //declare new state object
    @StateObject var locationsViewModel:LocationsViewModel = LocationsViewModel()
    
    var body: some View {
        VStack{
            
            //2 buttons
            //with
            //2 different locations
            
            //and displays
            
            
            //display for button1
            HStack{
                
                Button(){
                    print("Set and generate new location for location 1")
                    
                    let newLocation = locationsViewModel.generateRandomLocationItem()
                    locationsViewModel.locationsDataModel.locationOneData = newLocation
                    
                }label: {
                        
                    Text("Generate Location 1")
                        .foregroundStyle(.red)
                }
                
                
                
                Button(){
                    print("Set and generate new location for location 2")
                    let newLocation = locationsViewModel.generateRandomLocationItem()
                    locationsViewModel.locationsDataModel.locationTwoData = newLocation
                }label: {
                    Text("Generate Location 2")
                }
                
                
                //Bottom Of Hstack
            }
            
            
            //Two Display Areas
            HStack{
                
                LocationViewOne()
                    .environmentObject(locationsViewModel)
                
                LocationViewTwo()
                    .environmentObject(locationsViewModel)

            }
            
            
            
            //Bottom Of Vstack
        }
    }
}


struct LocationViewOne: View {
    @EnvironmentObject var locationsViewModel:LocationsViewModel
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .fill(.red)
                .frame(width: 150, height: 150)
            
            VStack{
                Text("LONG: \(locationsViewModel.locationsDataModel.locationOneData.long)")
                Text("LAT: \(locationsViewModel.locationsDataModel.locationOneData.lat)")
            }
            

                
            //Bottom Of Zstack
        }
        
        
    }
}


struct LocationViewTwo: View {
    //env object and set to location 2
    @EnvironmentObject var locationsViewModel:LocationsViewModel
    
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .fill(.blue)
                .frame(width: 150, height: 150)
            
            VStack{
                Text("LONG: \(locationsViewModel.locationsDataModel.locationTwoData.long)")
                Text("LAT: \(locationsViewModel.locationsDataModel.locationTwoData.lat)")
            }
            

                
            //Bottom Of Zstack
        }
        
        
    }
}



#Preview {
    LocationViewerView()
}


