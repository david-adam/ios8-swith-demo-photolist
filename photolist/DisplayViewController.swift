//
//  DisplayViewController.swift
//  photolist
//
//  Created by Wei Dai on 12/20/14.
//  Copyright (c) 2014 Wei Dai. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    var currentPhoto: Photo?
    
    @IBOutlet weak var currentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var image = UIImage(named: currentPhoto!.filename)
        currentImage.image = image
        
        // Do any additional setup after loading the view.
        self.title = currentPhoto!.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        
        var thirdScene = segue.destinationViewController as InfoViewController
        
        // Pass the selected object to the new view controller.
        
        thirdScene.currentPhoto = currentPhoto
    }
    

}
