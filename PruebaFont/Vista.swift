//
//  Vista.swift
//  PruebaFont
//
//  Created by Alejandro Rodriguez on 10/22/15.
//  Copyright © 2015 Alejandro Rodriguez. All rights reserved.
//

import UIKit

class Vista: UIView {

    var numberOfViews: Int?
    var viewsArray:NSMutableArray?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    func initializeViews(){
        
        viewsArray = NSMutableArray()
        
        
        for var index = 0; index < numberOfViews; ++index {
            
            let button:UIButton = UIButton(forAutoLayout:())
            button.backgroundColor = .greenColor()
            addSubview(button)
            viewsArray?.addObject(button)
        }
        
        viewsArray?.autoSetViewsDimensionsToSize(CGSize(width: 30, height: 30))
        
        viewsArray?.autoDistributeViewsAlongAxis(.Horizontal, alignedTo: .Horizontal, withFixedSize: 30, insetSpacing: true)
        
        let firstElement:UIButton = viewsArray?.firstObject as!UIButton
        
        firstElement.autoAlignAxisToSuperviewAxis(.Horizontal)
        
        layoutIfNeeded()
        
        
        
        
    }
    
    

}
