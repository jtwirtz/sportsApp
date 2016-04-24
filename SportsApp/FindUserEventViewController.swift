//
//  FindUserEventViewController.swift
//  SportsApp
//
//  Created by Kawika Avilla on 4/23/16.
//  Copyright © 2016 jwirtz. All rights reserved.
//

import UIKit

class FindUserEventViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var findUserEventTable: UITableView!
    let sportsArray = ["Football", "Tennis", "Basketball", "Biking", "Running", "Kayaking", "Canoeing", "Weightlifting", "Hockey", "Climbing", "Golf", "Ultimate Frizbie"]
    var selectedSportsArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        findUserEventTable.dataSource = self
        findUserEventTable.delegate = self
        
    }

    @IBAction func submitFindUserEvents(sender: AnyObject) {
        if selectedSportsArray.count != 0 {
         performSegueWithIdentifier("selectSportsArray", sender: sender)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "foundEventSegue" {
            let vc: FoundUserEventsViewController = segue.destinationViewController as! FoundUserEventsViewController
            vc.mySeguedArray = selectedSportsArray
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sportsArray.count
    }
    
  
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("findEventCell")! as UITableViewCell
        cell.textLabel?.text = sportsArray[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            cell.accessoryType = .Checkmark
            selectedSportsArray.append(sportsArray[indexPath.row])
        }
        
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
