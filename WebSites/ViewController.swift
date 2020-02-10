//
//  ViewController.swift
//  WebSites
//
//  Created by slava bily on 10/2/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var websites = ["apple.com", "hackingwithswift.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        title = "Easy Browser"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Site", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            vc.website = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }   
}
