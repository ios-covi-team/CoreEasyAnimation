//
//  ViewController.swift
//  TestCoreEasy
//
//  Created by Kai Luu on 5/10/19.
//  Copyright © 2019 Kai Luu. All rights reserved.
//

import UIKit
import CoreEasyAnimation

class ViewController: UIViewController {

    
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func onTapBtn(_ sender: Any) {
        CoreEasyAnimation.animationPopupAppear(yourView: btn, timeDuration: 0.5) { (finish) in
            if finish {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1, execute: {
                    CoreEasyAnimation.animationPopupDisappear(yourView: self.btn, timeDuration: 0.5, completion: { (b) in
                        
                    })
                })
            }
        }

    }
}

