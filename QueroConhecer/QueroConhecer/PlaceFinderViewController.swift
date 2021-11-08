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
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
