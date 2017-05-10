//
//  ViewController.swift
//  projectfuck
//
//  Created by Diego Watanabe on 5/9/17.
//  Copyright © 2017 fuck. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        let location = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        // Creates a marker in the center of the map.
        setMarker(mapView: mapView, position:location, title:"Sydney", snippet:"asdfasdf")
        // Do any additional setup after loading the view, typically from a nib.
    }
    func setMarker(mapView:GMSMapView, position:CLLocationCoordinate2D, title:String, snippet:String?) {
        let marker = GMSMarker()
        marker.position = position
        marker.title = title
        marker.snippet = snippet
        marker.map = mapView
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

