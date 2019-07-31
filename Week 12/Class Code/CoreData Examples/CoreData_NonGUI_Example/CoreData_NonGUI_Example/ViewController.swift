//
//  ViewController.swift
//  CoreData_NonGUI_Example
//
//  Created by Sujeet Lohan on 2019-07-30.
//  Copyright © 2019 Georgian College. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UIApplicationDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    let appDelegate  = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
       ///*
        let newEmployee = NSEntityDescription.insertNewObject(forEntityName:"Employee", into:context)
        newEmployee.setValue(101,forKey:"employeeID" )
        newEmployee.setValue("Sujeet", forKey: "employeeName")
        
        newEmployee.setValue(102,forKey:"employeeID" )
        newEmployee.setValue("Ross", forKey: "employeeName")
        
        newEmployee.setValue(103,forKey:"employeeID" )
        newEmployee.setValue("Tim", forKey: "employeeName")
        
        do {
            try context.save()
            print("Employees Data Saved")
            
        }
        catch
        {
            print("Error occured")
        }
    //*/
        
  // Retrieving the employees
   /* ..
        print("Printing the rows:\n")
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Employee")
        
        do {
            
            let results = try context.fetch(fetchRequest)
            print("Number of rows: \(results.count)")
            if results.count > 0
            {
            for result in results as! [NSManagedObject]
            {
                if let employeeID = result.value( forKey: "employeeID") as? Int32
                { print(employeeID) }
                if let employeeName = result.value( forKey: "employeeName") as? String
                { print(employeeName) }
            } // end for
            } // end if
        } // end do
        catch  {
            
        } // end catch
       ..*/
    
        // Updating the row
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Employee")
        
        do {
            
            let results = try context.fetch(fetchRequest)
            print("Number of rows: \(results.count)")
            if results.count > 0
            {
                for result in results as! [NSManagedObject]
                {
                    //if let employeeID = result.value( forKey: "employeeID") as? Int32
                    //{ print(employeeID) }
                    if let employeeName = result.value( forKey: "employeeName") as? String
                    {  result.setValue("Lohan", forKey: employeeName)
                        print(employeeName) }
                } // end for
            } // end if
        } // end do
        catch  {
            
        } // end catchs
    } // end viewDidLoad

}

