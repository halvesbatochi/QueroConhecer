//
//  PlaceFinderViewController.swift
//  QueroConhecer
//
//  Created by Henrique Alves Batochi on 08/11/21.
//

import UIKit
import MapKit

class PlaceFinderViewController: UIViewController {
    
    @IBOutlet weak var tfCity: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var viLoading: UIView!
    @IBOutlet weak var aiLoading: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func findCity(_ sender: Any) {
        tfCity.resignFirstResponder()
        let address = tfCity.text!
        load(show: true)
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(address) { (placemarks, error) in
            // Como estou dentro de uma clousure preciso do SELF para ter acesso aos metodos
            self.load(show: false)
            guard let placemark = placemarks?.first else { return }
            print(Place.getFormattedAddress(with: placemark))
        }
    }
    
    func load(show: Bool) {
        viLoading.isHidden = !show
        if show {
            aiLoading.startAnimating()
        } else {
            aiLoading.stopAnimating()
        }
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
