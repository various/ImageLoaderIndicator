//
//  CircularLoaderView.swift
//  ImageLoaderIndicator
//
//  Created by Tim Geng on 4/27/15.
//  Copyright (c) 2015 Rounak Jain. All rights reserved.
//

import UIKit

class CircularLoaderView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    let circlePathLayer = CAShapeLayer()
    let circleRadius : CGFloat = 20.0
    
    override init(frame: CGRect) {
        super.init(frame: CGRect);
        configure()

    }
    
   func configure(){
    
    circlePathLayer.frame = bounds;
    circlePathLayer.lineWidth = 2.0;
    circlePathLayer.fillColor = UIColor.clearColor().CGColor;
    circlePathLayer.strokeColor = UIColor.redColor().CGColor;
    self.layer.addSublayer(circlePathLayer);
    backgroundColor = UIColor.whiteColor();
    
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func circleFrame() -> CGRect{
        var circleFrame = CGRect(x: 0, y: 0, width: 2 * circleRadius, height: 2 * circleRadius);
        circleFrame.origin.x = CGRectGetMidX(circlePathLayer.path);
    }
    
}
