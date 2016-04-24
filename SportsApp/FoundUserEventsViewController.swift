//
//  FoundUserEventsViewController.swift
//  SportsApp
//
//  Created by Kawika Avilla on 4/23/16.
//  Copyright © 2016 jwirtz. All rights reserved.
//

import UIKit

class FoundUserEventsViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    //change for fucks
    var selectedSportsArray = [String]()
    var mySeguedArray: [String]!{
        didSet{
            selectedSportsArray = mySeguedArray //no need to call viewDidLoad
        }
    }
    @IBOutlet weak var foundEventTable: UITableView!
    
    var fakeSportArray = [Sport]()
    var showArray = [Sport]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let basketballGame:Sport = Sport.init(name: "Lakeshore Basketball Game", location: "Lakeshore", time: "Today @ 2:30", gameType: "Basketball")
        let tennisGame:Sport = Sport.init(name: "Super Fun Tennis Game", location: "Serf", time: "Today @ 5:30", gameType: "Tennis")
        let tennisGame2:Sport = Sport.init(name: "Naked Tennis Game with Beetches", location: "Lakeshore Courtsf", time: "5:30 pm", gameType: "Tennis")
        fakeSportArray.append(basketballGame)
        fakeSportArray.append(tennisGame)
        fakeSportArray.append(tennisGame2)
        for index in 0 ..< fakeSportArray.count{
            let fakeSportName = fakeSportArray[index].getGameType()
            if selectedSportsArray.contains(fakeSportName){
                showArray.append(fakeSportArray[index])
            }
        }
        foundEventTable.delegate = self
        foundEventTable.dataSource = self
    
    }
    @IBAction func backButtonTap(sender: AnyObject) {
         dismissViewControllerAnimated(true, completion: {})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:FoundUserEventTableCell = tableView.dequeueReusableCellWithIdentifier("foundTableCell")! as! FoundUserEventTableCell
       let sportEvent = showArray[indexPath.row]
        cell.descriptionLabel.text = sportEvent.getName()
        cell.gameTypeLabel.text = sportEvent.getGameType()
        cell.locationLabel.text = sportEvent.getLocation()
        cell.timeLabel.text = sportEvent.getTime()
        return cell
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
