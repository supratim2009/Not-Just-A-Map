//
//  FactoryViewProvider.swift
//  Not_Just_A_Map
//
//  Created by 01HW664133 on 04/06/15.
//  Copyright (c) 2015 Supratim&Co. All rights reserved.
//

import UIKit

class FactoryViewProvider: NSObject {
    class func getViewController (FromStroryBoard storyBoard :(UIStoryboard), ForMapType type :(String)) -> AnyObject? {
        var viewController :AnyObject?
        
        switch type {
        case "AppleMap" :
            viewController = storyBoard .instantiateViewControllerWithIdentifier("MAPKITVIEWCONTROLLER")
        case "GoogleMap" :
            viewController = storyBoard .instantiateViewControllerWithIdentifier("GOOGLEMAPVIEWCONTROLLER")
        case "BingMap":
            viewController = storyBoard .instantiateViewControllerWithIdentifier("BINGMAPVIEWCONTROLLER")
        default :
            //viewController = storyBoard .instantiateViewControllerWithIdentifier("WEBMAPVIEWCONTROLLER")
            break
        }
    return viewController
    }
}
