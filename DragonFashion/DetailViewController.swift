//
//  DetailViewController.swift
//  DragonFashion
//
//  Created by Steven Yang on 1/28/16.
//  Copyright © 2016 Le Mont. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var labelView: UILabel!
    var dorgan: Dragon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelView.text = dorgan.name
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
