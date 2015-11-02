//
//  ViewController.swift
//  SeaCargo3
//
//  Created by elias bloemendaal on 28/10/2015.
//  Copyright © 2015 elias bloemendaal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var HeadImageView: UIImageView!
    
    @IBOutlet var backgroundColor: UIView!
    
    @IBOutlet weak var PictureChangeRightButton: UIButton!

    @IBOutlet weak var PictureChangeLeftButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning()  {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PictureChangeRight(sender: UIButton) {
        self.HeadImageView.image = UIImage(named: "picture2")
    }

    @IBAction func PictureChangeLeft(sender: UIButton) {
        self.HeadImageView.image = UIImage(named: "picture1")
    }

}

