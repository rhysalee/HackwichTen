//
//  ViewController.swift
//  HackwichTen
//
//  Created by Rhysa Lee on 4/14/20.
//  Copyright © 2020 Rhysa Lee. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        
        let resturantOne = Resturant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        
        mapView.addAnnotation(resturantOne)
//Problem Set #1
        let resturantTwo = Resturant(title: "Assaggio", type: "Italian-American", coordinate: CLLocationCoordinate2D(latitude: 21.332640, longitude: -158.082973))
        
        mapView.addAnnotation(resturantTwo)
    }

    func centerMapOnLocation(location: CLLocation){
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: CLLocationDistance(regionRadius),longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(coordinateRegion, animated: true)
    }

}

