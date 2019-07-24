//
//  ViewController.swift
//  MapUserLocation
//
//  Created by Xcode User on 2019-04-17.
//  Copyright © 2019. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate
{

    
    @IBOutlet weak var mapView: MKMapView!
    
    // Create location manager object
    
    let locManager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let currentLoc = locations[0]
        
        // defining the coordinates
        let myLocationCoordinates:CLLocationCoordinate2D = CLLocationCoordinate2DMake(currentLoc.coordinate.latitude, currentLoc.coordinate.longitude)
        
    // Defining the span for zooming into location
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        
       // Defining the region
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocationCoordinates, span)
        
       // setting the region for the mapview
        
        mapView.setRegion(region, animated: true)
        
        print(currentLoc.altitude)
        print(currentLoc.speed)
        
        self.mapView.showsUserLocation = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Add the following for accuracy, authorization and location updates
        
        locManager.delegate = self
        locManager.desiredAccuracy = kCLLocationAccuracyBest
        locManager.requestWhenInUseAuthorization()
        locManager.startUpdatingLocation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

