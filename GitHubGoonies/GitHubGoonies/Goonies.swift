//
//  Goonies.swift
//  GitHubGoonies
//
//  Created by Kelly Robinson on 9/28/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import Foundation

///// simple detail

// username
// avatar

///// full detail

// full name
// location
// bio
// followers
// following
// repo count
// gist count



let API_ROOT = "https://api.github.com"

let myProfileURL = API_ROOT + "/users/kjr090878"

var users: [[String:AnyObject?]] = [
    
    [
        "login": "kjr090878",
        "id": 14153632,
        "avatar_url": "https://avatars.githubusercontent.com/u/14153632?v=3",
        "gravatar_id": "",
        "url": "https://api.github.com/users/kjr090878",
        "html_url": "https://github.com/kjr090878",
        "followers_url": "https://api.github.com/users/kjr090878/followers",
        "following_url": "https://api.github.com/users/kjr090878/following{/other_user}",
        "gists_url": "https://api.github.com/users/kjr090878/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/kjr090878/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/kjr090878/subscriptions",
        "organizations_url": "https://api.github.com/users/kjr090878/orgs",
        "repos_url": "https://api.github.com/users/kjr090878/repos",
        "events_url": "https://api.github.com/users/kjr090878/events{/privacy}",
        "received_events_url": "https://api.github.com/users/kjr090878/received_events",
        "type": "User",
        "site_admin": false,
        "name": "Kelly Robinson",
        "company": nil,
        "blog": nil,
        "location": nil,
        "email": nil,
        "hireable": nil,
        "bio": nil,
        "public_repos": 1,
        "public_gists": 0,
        "followers": 1,
        "following": 1,
        "created_at": "2015-09-06T22:13:04Z",
        "updated_at": "2015-09-20T21:30:11Z"
    ]
]


class GitHubRequest: NSObject {
    
    class func requestUserInfo(username: String, completion: (responseInfo: AnyObject?) -> ()) {
        
        let userURL = API_ROOT + "/users/" + username
        
        print(userURL)
        
        if let url = NSURL(string: userURL) {
            
            let request = NSURLRequest(URL: url)
            
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
            
                
                if let data = data {
                    
                    do {
                        
                    let info = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers)
                        
                        completion(responseInfo: info)
                        
                        print (info)
                    
                    } catch {
                        
                        print(error)
                        
                    }
                }
                
//                print (data)
                
            })
            
            task.resume()
            
        }
        
    }
    
    class func request(info: [String:AnyObject], completion: (responseInfo: AnyObject?) -> ()) {
        
        
    }
    
    
    
}