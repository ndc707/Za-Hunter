//
//  ViewController.swift
//  Za Hunter
//
//  Created by Student on 3/11/19.
//  Copyright © 2019 Natalie Castaneda. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    var region = MKCoordinateRegion()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

