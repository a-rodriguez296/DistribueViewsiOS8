//
//  ViewController.swift
//  PruebaFont
//
//  Created by Alejandro Rodriguez on 10/21/15.
//  Copyright © 2015 Alejandro Rodriguez. All rights reserved.
//

import UIKit




class ViewController: UIViewController {


    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        

        
        
        
//        view.setNeedsUpdateConstraints()
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        
        let vista = UINib(nibName: "Vista", bundle: nil).instantiateWithOwner(nil, options: nil)[0] as? Vista
        vista?.translatesAutoresizingMaskIntoConstraints = false
        vista?.numberOfViews = 10
        
        view.addSubview(vista!)
        
        vista?.autoSetDimension(.Height, toSize: 100)
        
        vista?.autoPinEdge(.Leading, toEdge: .Leading, ofView: view)
        vista?.autoPinEdge(.Trailing, toEdge: .Trailing, ofView: view)
        vista?.autoAlignAxisToSuperviewMarginAxis(.Horizontal)
        
        vista?.initializeViews()
        
        
        
        
        
        
    }
    
    
    override func updateViewConstraints() {
        
//        let v1 = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        v1.translatesAutoresizingMaskIntoConstraints = false
//        v1.backgroundColor = .greenColor()
//        view.addSubview(v1)
//        
//        let v2 = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        v2.translatesAutoresizingMaskIntoConstraints = false
//        v2.backgroundColor = .blueColor()
//        view.addSubview(v2)
//        
//        let v3 = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        v3.translatesAutoresizingMaskIntoConstraints = false
//        v3.backgroundColor = .blueColor()
//        view.addSubview(v3)
//        
//        
//        let v4 = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        v4.translatesAutoresizingMaskIntoConstraints = false
//        v4.backgroundColor = .redColor()
//        view.addSubview(v4)
//    
//        
//        
//        let views:NSArray = [v1,v2,v3,v4]
//        
//
//        views.autoSetViewsDimensionsToSize(CGSize(width: 30, height: 30))
//        views.autoDistributeViewsAlongAxis(.Horizontal, alignedTo: .Horizontal, withFixedSize: 30, insetSpacing: true)
//        
//        
//        v1.autoAlignAxisToSuperviewAxis(.Horizontal)
//        
//
        super.updateViewConstraints()
    }


}

