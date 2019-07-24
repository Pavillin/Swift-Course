//
//  ViewController.swift
//  MapLauchApp
//
//  Created by Xcode User on 2019-04-17.
//  Copyright © 2019. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    @IBAction func btnLaunch(_ sender: Any) {
        
       // define latitude and longitute - of type CLLocation Degrees
        // Georgian College
        
        let lat:CLLocationDegrees = 44.412695
        let long:CLLocationDegrees = -79.666892
        
        // define co-ordinates
        
        let coordinates = CLLocationCoordinate2DMake(lat, long)
        
        let regionDistance:CLLocationDistance = 1000
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates,regionDistance,regionDistance )
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate:regionSpan.center), MKLaunchOptionsMapSpanKey:NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Georgian College"
        mapItem.openInMaps(launchOptions: options)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

