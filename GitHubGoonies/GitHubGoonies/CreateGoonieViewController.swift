//
//  CreateGoonieViewController.swift
//  GitHubGoonies
//
//  Created by Kelly Robinson on 9/29/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit

class CreateGoonieViewController: UIViewController {
    
    @IBOutlet weak var addUserButtom: UIBarButtonItem!
    
    @IBAction func cancelCreate(sender: AnyObject) {
        
        navigationController?.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    @IBAction func addAvatarButton(sender: AnyObject) {
    }
    
    @IBOutlet weak var addAvatar: PrettyButton!
    

    @IBOutlet weak var fullNameText: UITextField!
    
    @IBOutlet weak var emailUserText: UITextField!
    
    @IBOutlet weak var usernameText: UITextField!
        
    @IBOutlet weak var locationText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GitHubRequest.requestUserInfo("joalbright", completion: { (responseInfo) -> () in
            
            if let user = responseInfo as? [String:AnyObject] {
                
                print (user)
                
                users.append(user)
            }
            
        })
        

        // Do any additional setup after loading the view.
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
