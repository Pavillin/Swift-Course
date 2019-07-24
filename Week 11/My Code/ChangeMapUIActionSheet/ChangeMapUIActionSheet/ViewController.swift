//
//  ViewController.swift
//  ChangeMapUIActionSheet
//
//  Created by  S. on 4/18/19.
//  Copyright © 2019 All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBAction func btnChangeMap(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Confirm", message: "Please Select Map Type", preferredStyle: .actionSheet)
        
        let standardButton = UIAlertAction(title: "Standard", style: .default, handler: { (action) -> Void in
            self.changeMapType(type: "Standard")
        })
        
        let  satelliteButton = UIAlertAction(title: "Satellite", style: .default, handler: { (action) -> Void in
            self.changeMapType(type: "Satellite")
            
        })
        
        let  hybridButton = UIAlertAction(title: "Hybrid", style: .default, handler: { (action) -> Void in
            self.changeMapType(type: "Hybrid")
            
        })
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) -> Void in
            //print("Cancel button tapped")
        })
        
        
        alertController.addAction(standardButton)
        alertController.addAction(satelliteButton)
        alertController.addAction(hybridButton)
        alertController.addAction(cancelButton)
  // Display the alert controller
        present(alertController, animated: true, completion: nil)
    }
    
    func changeMapType(type:String){
        switch type {
        case "Standard":
           mapView.mapType = MKMapType.standard
            showGeorgianCollege()
        case "Satellite":
            mapView.mapType = MKMapType.satellite
            showGeorgianCollege()
        case "Hybrid":
            mapView.mapType = MKMapType.hybrid
            showGeorgianCollege()
        default: break
        }
        
    }
    
    func showGeorgianCollege(){
        // define location which you want to show in the map
        
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

