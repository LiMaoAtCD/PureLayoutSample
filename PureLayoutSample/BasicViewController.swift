//
//  BasicViewController.swift
//  PureLayoutSample
//
//  Created by AlienLi on 16/1/17.
//  Copyright © 2016年 MarcoLi. All rights reserved.
//

import UIKit

class BasicViewController: UIViewController {
    
    var redView: UIView!
    var greenView: UIView!
    
    var yellowLabel: UILabel!
    var brownLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        redView = UIView()
        redView.backgroundColor = UIColor.redColor()
        redView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(redView)
        
        
        greenView = UIView()
        greenView.backgroundColor = UIColor.greenColor()
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(greenView)
        
        
        //Constraints set
        self.view.addConstraints([

            // self.topLayoutGuide ...当有navigationbar 或者statusbar时，可以用这种属性获取到bar的下边缘
            NSLayoutConstraint(item: self.redView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.topLayoutGuide, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 8.0),
            NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.TrailingMargin, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.TrailingMargin, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 100.0)
            ])
        
        self.view.addConstraints([
            NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: redView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 8.0),
            NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.LeftMargin, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.TrailingMargin, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.TrailingMargin, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 100.0)
            
            ])
        
//        NSLayoutConstraint.constraintsWithVisualFormat("V:", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: nil, views: ["redView":redView])
        
        
        
        yellowLabel = UILabel()
        yellowLabel.text = "Yellow Label"
        yellowLabel.font = UIFont.systemFontOfSize(50.0, weight: 1.0)
        self.view.addSubview(yellowLabel)
    
        yellowLabel.translatesAutoresizingMaskIntoConstraints = false
        
        brownLabel = UILabel()
        brownLabel.font = UIFont.systemFontOfSize(20.0, weight: 1.0)
        brownLabel.text = "brown Label"

        brownLabel.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(brownLabel)
        
        self.view.addConstraints([
            NSLayoutConstraint(item: yellowLabel, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 10),
            NSLayoutConstraint(item: yellowLabel, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0)
            ])
        
        self.view.addConstraints([
            NSLayoutConstraint(item: brownLabel, attribute: NSLayoutAttribute.FirstBaseline, relatedBy: NSLayoutRelation.Equal, toItem: yellowLabel, attribute: NSLayoutAttribute.LastBaseline, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: brownLabel, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: yellowLabel, attribute: NSLayoutAttribute.RightMargin, multiplier: 1.0, constant: 10.0)
            ])
        
        
//        let constraints1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[yellowLabel(150)]-[brownLabel(150)]-|", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: nil, views: ["yellowLabel": yellowLabel, "brownLabel": brownLabel])
//        
//        self.view.addConstraints(constraints1)
//        
//        let constraints2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[greenView]-50-[yellowLabel]", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: ["yellowLabel": yellowLabel, "brownLabel": brownLabel,"redView":redView,"greenView":greenView])
//        
//        self.view.addConstraints(constraints2)
//
//        let constraints3 = NSLayoutConstraint.constraintsWithVisualFormat("V:[greenView]-50-[brownLabel]", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: ["yellowLabel": yellowLabel, "brownLabel": brownLabel,"redView":redView,"greenView":greenView])
//        self.view.addConstraints(constraints3)

        
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

}
