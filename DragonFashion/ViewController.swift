//
//  ViewController.swift
//  DragonFashion
//
//  Created by Steven Yang on 1/28/16.
//  Copyright © 2016 Le Mont. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var dragons: [Dragon]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dragon1 = Dragon(name:"Smaug" , clothingItem:"gold")
        print(dragon1.name)
        
        let dragon2 = Dragon(name: "Blue Eyes White Dragon", clothingItem: "scales")
        
        let dragon3 = Dragon(name: "Charizard", clothingItem: "fedora")
        
        let dragon4 = Dragon(name: "Spyro", clothingItem: "birthday suit")
        
        let dragon5 = Dragon(name: "Blueberry", clothingItem: "strawberries")
        
        dragons = [dragon1, dragon2, dragon3, dragon4, dragon5]

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        cell?.textLabel?.text = dragons[indexPath.row].name
        cell?.detailTextLabel?.text = dragons[indexPath.row].signatureClothingItem
        return cell!
}
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dragons.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destVC = segue.destinationViewController as? DetailViewController {
            let indexPath = self.tableView.indexPathForSelectedRow
            destVC.dorgan = dragons[indexPath!.row]
        }
    }
}

