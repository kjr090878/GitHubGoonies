//
//  Goonies.swift
//  GitHubGoonies
//
//  Created by Kelly Robinson on 9/28/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import Foundation

// Normal

// new class file -> GoonieDetailViewController
// layout the detail view controller to display all of the simple & full detail info
// add a plus button to the top right of the navigationbar on the Goonies view


// Hard

// add a new view controller to storyboard below the Goonies viewcontroller
// connect the plus button with a present segue
// add a textfield, submit button to presented viewcontroller
// add a cancel button that dismisses the presented viewcontroller




// simple detail

// username
// avatar


// full detail

// full name
// location
// bio
// followers
// following
// repo count
// gist count



let API_ROOT = "https://api.github.com"

let myProfileURL = API_ROOT + "/users/kjr090878"

let users: [[String:AnyObject?]] = [
    
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