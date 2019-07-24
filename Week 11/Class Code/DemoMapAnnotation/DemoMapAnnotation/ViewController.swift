//
//  ViewController.swift
//  DemoMapAnnotation
//
//  Created by Dylan Sprague on 2019-07-24.
//  Copyright © 2019 Dylan Sprague. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(44.413924, -79.666777)
        
        // defining area spanned by region
        
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1,longitudeDelta: 0.1)
        
        // define region
        
        let region:MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        // set the region
        
        mapView.setRegion(region, animated:true)
        
        // Annotation
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Georgian College"
        annotation.subtitle = "Leading College in GTA"
        mapView.addAnnotation(annotation)
        
    }


}

