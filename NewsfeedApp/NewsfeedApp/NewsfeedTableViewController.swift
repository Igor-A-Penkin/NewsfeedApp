//
//  NewsfeedTableViewController.swift
//  NewsfeedApp
//
//  Created by Игорь Пенкин on 05.11.2020.
//

import UIKit

class NewsfeedTableViewController: UITableViewController {
    var posts: [Post]?
    var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchController()
        fetchPosts()
    }
    
    func setupSearchController() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.dimsBackgroundDuringPresentation = true
        searchController.searchBar.barStyle = .black
        navigationItem.titleView = searchController.searchBar
        definesPresentationContext = true
    }
    
    func fetchPosts() {
        posts = Post.fetchPosts()
        tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource
extension NewsfeedTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let posts = self.posts {
            return posts.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        cell.post = posts![indexPath.row]
        return cell
    }
}
