//
//  HomeMapViewController.swift
//  Not_Just_A_Map
//
//  Created by 01HW664133 on 04/06/15.
//  Copyright (c) 2015 Supratim&Co. All rights reserved.
//

import UIKit


class HomeMapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func viewDidAppear(animated: Bool) {
        self.getSegueForCurrentMapType();
        var containerView :UIView = self.view.viewWithTag(123)! as UIView
        println("ViewDidAppear :\(NSStringFromCGRect(containerView.frame))")
    }
    
    override func viewWillLayoutSubviews() {
        var containerView :UIView = self.view.viewWithTag(123)! as UIView
        

    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    }
    
    
    func getSegueForCurrentMapType() -> Void {
        var customSegue :UIStoryboardSegue?
        var destinationViewController :UIViewController?
        //
        
        var mapTypeSegment :UISegmentedControl = self.view.viewWithTag(124) as UISegmentedControl
        var containerView :UIView = self.view.viewWithTag(123)! as UIView
        println("On Get Sgue container\(NSStringFromCGRect(containerView.frame))")
        switch mapTypeSegment.selectedSegmentIndex {
        case 0 :
            destinationViewController = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("MAPKITVIEWCONTROLLER") as MapkitMapViewController
            
        case 1 :
            destinationViewController = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("GOOGLEMAPVIEWCONTROLLER") as GoogleMapViewController
        default :
            break
            
        }
        for subview in containerView.subviews {
            subview.removeFromSuperview()
        }
        for childController in self.childViewControllers {
            childController.removeFromParentViewController()
        }
        
        self.addChildViewController(destinationViewController!)
        containerView.addSubview(destinationViewController!.view)
        
        println("On Get Sgue content :\(NSStringFromCGRect(destinationViewController!.view.frame))")
        
    }

    @IBAction func valueChanged(sender: UISegmentedControl) {
        self.getSegueForCurrentMapType()
    }
    
    @IBAction func navigationItemTapped(sender: UIBarButtonItem) {
        
    }
    
    @IBAction func leftToolBarButtonItemTapped(sender: UIBarButtonItem) {
    }
}
