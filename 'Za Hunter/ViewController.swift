//
//  ViewController.swift
//  'Za Hunter
//
//  Created by Patrick Dowell on 3/11/19.
//  Copyright © 2019 Patrick Dowell. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
    }
    
    
    
}
