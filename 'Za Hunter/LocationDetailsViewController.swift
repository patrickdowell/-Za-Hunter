//
//  LocationDetailsViewController.swift
//  'Za Hunter
//
//  Created by Patrick Dowell on 3/12/19.
//  Copyright © 2019 Patrick Dowell. All rights reserved.
//

import UIKit
import MapKit

class LocationDetailsViewController: UIViewController {
    
    var selectedMapItem = MKMapItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedMapItem)
    }
    
}
