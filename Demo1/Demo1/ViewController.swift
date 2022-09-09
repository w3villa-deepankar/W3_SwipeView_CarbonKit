//
//  ViewController.swift
//  Demo1
//
//  Created by Deepankar Gupta on 06/09/22.
//

import UIKit
import CarbonKit

class ViewController: UIViewController, CarbonTabSwipeNavigationDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let items = ["Social", "Upcoming Event", "Web Meeting"]
        let carbonTabSwipeNavigation = CarbonTabSwipeNavigation(items: items, delegate: self)
        carbonTabSwipeNavigation.insert(intoRootViewController: self)
    }
    
    func generateImage(for view: UIView) -> UIImage? {
        defer {
            UIGraphicsEndImageContext()
        }
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, false, UIScreen.main.scale)
        if let context = UIGraphicsGetCurrentContext() {
            view.layer.render(in: context)
            return UIGraphicsGetImageFromCurrentImageContext()
        }
        return nil
    }

    var iconWithTextImage: UIImage {
        let button = UIButton()
        let icon = UIImage(named: "home")
        button.setImage(icon, for: .normal)
        button.setTitle("Home", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 10)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 10)
        button.sizeToFit()
        return generateImage(for: button) ?? UIImage()
    }
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        guard let storyboard = storyboard else { return UIViewController() }
        if index == 0 {
            return storyboard.instantiateViewController(withIdentifier: "FirstViewController")
        } else if index == 1 {
            return storyboard.instantiateViewController(withIdentifier: "EventsVC")
        } else if index == 2 {
            return storyboard.instantiateViewController(withIdentifier: "WebMeeetingVC")
        }
        return storyboard.instantiateViewController(withIdentifier: "EventsVC")
    }
}

