//
//  ViewController.swift
//  PruebaFont
//
//  Created by Alejandro Rodriguez on 10/21/15.
//  Copyright © 2015 Alejandro Rodriguez. All rights reserved.
//

import UIKit




class ViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        btn1.translatesAutoresizingMaskIntoConstraints = false
        btn2.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.setNeedsUpdateConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func updateViewConstraints() {
        
        let v1 = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        v1.translatesAutoresizingMaskIntoConstraints = false
        v1.backgroundColor = .greenColor()
        view.addSubview(v1)
        
        let v2 = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        v2.translatesAutoresizingMaskIntoConstraints = false
        v2.backgroundColor = .blueColor()
        view.addSubview(v2)
        
        let v3 = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        v3.translatesAutoresizingMaskIntoConstraints = false
        v3.backgroundColor = .blueColor()
        view.addSubview(v3)
        
        
        let v4 = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        v4.translatesAutoresizingMaskIntoConstraints = false
        v4.backgroundColor = .redColor()
        view.addSubview(v4)
        
        btn1.autoSetDimensionsToSize(CGSize(width: view.frame.size.height * 0.05, height: 30))
        btn2.autoSetDimensionsToSize(CGSize(width: 30, height: 30))
        
        
        let views:NSArray = [v1,v2,v3,v4]
        
        
        
        
        let array:NSArray = [btn1, btn2]
        views.autoSetViewsDimensionsToSize(CGSize(width: view.frame.size.height * 0.05, height: view.frame.size.height * 0.05))
        views.autoDistributeViewsAlongAxis(.Horizontal, alignedTo: .Horizontal, withFixedSize: view.frame.size.height * 0.05, insetSpacing: true)
        
        
        v1.autoAlignAxisToSuperviewAxis(.Horizontal)
        

        super.updateViewConstraints()
    }


}

