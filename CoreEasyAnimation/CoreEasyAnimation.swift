//
//  CoreEasyAnimationView.swift
//  CoreEasyAnimation
//
//  Created by Kai Luu on 5/10/19.
//  Copyright © 2019 Kai Luu. All rights reserved.
//

import UIKit
import Foundation

public class CoreEasyAnimation {

    // Use for when user wrong password or something
    
    public class func animationShakeView(shakeView: UIView) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: shakeView.center.x - 4.0, y: shakeView.center.y)
        animation.toValue = CGPoint(x: shakeView.center.x + 4.0, y: shakeView.center.y)
        shakeView.layer.add(animation, forKey: "position")
    }

    
    public class func animationPopupAppear(yourView: UIView,
                                           timeDuration:TimeInterval,
                                           completion:@escaping(_ finished:Bool) -> ()) {
        yourView.isHidden = false
        yourView.transform = CGAffineTransform.init(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: timeDuration/5*3, animations: {
            yourView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)

        }) { (isFinish) in
            if isFinish {
                yourView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)

                UIView.animate(withDuration: timeDuration/5*2, animations: {
                    yourView.transform = CGAffineTransform.init(scaleX: 1.0, y: 1.0)

                }, completion: { (BoolisFinish) in
                    if isFinish {
                        completion(isFinish)
                    }
                    
                })
                
            }
        }
    }
    
    public class func animationPopupDisappear(yourView: UIView,
                                           timeDuration:TimeInterval,
                                           completion:@escaping(_ finished:Bool) -> ()) {
        yourView.isHidden = false
        yourView.transform = CGAffineTransform.init(scaleX: 1.0, y: 1.0)

        UIView.animate(withDuration: timeDuration/5*2, animations: {
            yourView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            
        }) { (isFinish) in
            if isFinish {
                yourView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
                
                UIView.animate(withDuration: timeDuration/5*3, animations: {
                    yourView.transform = CGAffineTransform.init(scaleX: 0.01, y: 0.01)

                }, completion: { (BoolisFinish) in
                    if isFinish {
                        completion(isFinish)
                    }
                    
                })
                
            }
        }
    }
    
}
