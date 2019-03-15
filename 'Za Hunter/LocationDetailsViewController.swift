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
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var selectedMapItem = MKMapItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedMapItem)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameLabel.text = selectedMapItem.placemark.name
        var address = selectedMapItem.placemark.subThoroughfare! + " "
        address += selectedMapItem.placemark.thoroughfare! + "\n"
        address += selectedMapItem.placemark.locality! + ", "
        address += selectedMapItem.placemark.administrativeArea! + " "
        address += selectedMapItem.placemark.postalCode!
        addressLabel.text = address
        phoneLabel.text = selectedMapItem.phoneNumber
    }
    
    @IBAction func onDirectionsButtonTapped(_ sender: UIButton) {
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeWalking]
        MKMapItem.openMaps(with: [selectedMapItem], launchOptions: launchOptions)
    }
    
}
