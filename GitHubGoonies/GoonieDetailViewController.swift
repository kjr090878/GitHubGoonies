//
//  GoonieDetailViewController.swift
//  GitHubGoonies
//
//  Created by Kelly Robinson on 9/29/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit

class GoonieDetailViewController: UIViewController {
    
    var userIndex: Int!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var userEmailLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = users[userIndex]
        
        fullNameLabel.text = user["name"] as? String

        // Do any additional setup after loading the view.
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
