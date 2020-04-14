//
//  Resturant.swift
//  HackwichTen
//
//  Created by Rhysa Lee on 4/14/20.
//  Copyright © 2020 Rhysa Lee. All rights reserved.
//

import UIKit
import MapKit

class Resturant: NSObject, MKAnnotation {
    
    let  resturantTItile: String?
    let resturantType: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
    {
        self.resturantTItile = title
        self.resturantType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return resturantTItile
    }
}
