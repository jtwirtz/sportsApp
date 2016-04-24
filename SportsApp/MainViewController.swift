//
//  MainViewController.swift
//  SportsApp
//
//  Created by Kawika Avilla on 4/23/16.
//  Copyright © 2016 jwirtz. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var hostAnEventButton: UIButton!
    @IBOutlet weak var findAnEventButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hostAnEventButton.layer.cornerRadius = 9
        findAnEventButton.layer.cornerRadius = 9
    }

    @IBAction func findAnEvent(sender: AnyObject) {
        
    }
    
    @IBAction func hostAnEvent(sender: AnyObject) {
        
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
