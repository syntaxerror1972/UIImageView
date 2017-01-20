//
//  ViewController.swift
//  UIImageView
//
//  Created by Shrawan Shinde on 20/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var roundImage = UIImageView()
    var simpleImage = UIImageView()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //simple image
        simpleImage = UIImageView(frame:CGRect(x: 50, y: 50, width: 200, height: 200));
        simpleImage.image = UIImage(named:"demo.jpg")
        
        //round image
        roundImage = UIImageView(frame:CGRect(x: 50, y: 260, width: 200, height: 200));
        roundImage.image = UIImage(named:"demo.jpg")
        roundImage.layer.borderWidth = 1
        roundImage.layer.masksToBounds = false
        roundImage.layer.borderColor = UIColor.black.cgColor
        roundImage.layer.cornerRadius = roundImage.frame.height/2
        roundImage.clipsToBounds = true
        
        self.view.addSubview(simpleImage)
        self.view.addSubview(roundImage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

