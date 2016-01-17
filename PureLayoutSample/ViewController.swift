//
//  ViewController.swift
//  PureLayoutSample
//
//  Created by AlienLi on 16/1/17.
//  Copyright © 2016年 MarcoLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var view1: UIView!
    var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view1 = UIView()
        view1.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(view1)
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        
        
        view2 = UIView()
        view2.backgroundColor = UIColor.greenColor()
        
        self.view.addSubview(view2)
        
        view2.translatesAutoresizingMaskIntoConstraints = false
        
        self.view2.layoutMargins = UIEdgeInsetsMake(0, 0, 0, -8)

        self.view.addConstraints([

            NSLayoutConstraint(item: self.view1, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.topLayoutGuide, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 8.0),
            NSLayoutConstraint(item: view1, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view1, attribute: NSLayoutAttribute.TrailingMargin, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.TrailingMargin, multiplier: 1.0, constant: -8.0),
            NSLayoutConstraint(item: view1, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 100.0)
            ])
        
        self.view.addConstraints([
            NSLayoutConstraint(item: view2, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view1, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 8.0),
            NSLayoutConstraint(item: view2, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.LeftMargin, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view2, attribute: NSLayoutAttribute.TrailingMargin, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.TrailingMargin, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: view2, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 100.0)
            ])
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

