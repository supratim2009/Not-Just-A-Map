//
//  MapkitMapViewController.swift
//  Not_Just_A_Map
//
//  Created by 01HW664133 on 04/06/15.
//  Copyright (c) 2015 Supratim&Co. All rights reserved.
//

import UIKit
import MapKit

class MapkitMapViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var mapview: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapview.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func mapViewDidFinishLoadingMap(mapView: MKMapView!) {
        println("Did Finish :\(NSStringFromCGRect(self.view.frame))")
    }
    @IBAction func segmentValueChanged(sender: UISegmentedControl) {
    }
}
