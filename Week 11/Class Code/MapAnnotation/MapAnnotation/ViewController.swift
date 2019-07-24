//
//  ViewController.swift
//  MapAnnotation
//
//  Created by Xcode User on 2019-04-17.
//  Copyright © 2019. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // define location which you want to show in the map
        
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(44.730560, -79.602430)
        
        // defining area spanned by region
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1,0.1)
        
        // define region
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        // set the region
        
        mapView.setRegion(region, animated:true)
        
        // Annotation
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Georgian College"
        annotation.subtitle = "Leading College in GTA"
        mapView.addAnnotation(annotation)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

