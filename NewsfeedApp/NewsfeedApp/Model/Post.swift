//
//  Post.swift
//  NewsfeedApp
//
//  Created by Игорь Пенкин on 04.11.2020.
//

import Foundation
import UIKit

struct User {
    var username: String?
    var profileImage: UIImage?
}

struct Post {
    var createdBy: User
    var timeAgo: String?
    var caption: String?
    var image: UIImage?
    var numberOfLikes: Int?
    var numberOfComments: Int?
    var numberOfShares: Int?
    
    static func fetchPosts() -> [Post] {
        var posts = [Post]()
        let duc = User(username: "Duc Tran", profileImage: UIImage(named: "image0"))
        let post = Post(createdBy: duc, timeAgo: "1h43m", caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image: UIImage(named: "image6"), numberOfLikes: 12, numberOfComments: 28, numberOfShares: 32)
        posts.append(post)
        posts.append(post)
        posts.append(post)
        posts.append(post)
        posts.append(post)
        posts.append(post)
        posts.append(post)
        
        return posts
    }
    
}
