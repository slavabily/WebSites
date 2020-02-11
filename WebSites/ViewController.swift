//
//  ViewController.swift
//  WebSites
//
//  Created by slava bily on 10/2/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, Storyboarded {
    
    var showWebsite: ((String) -> Void)?
    let dataSource = ProjectDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        title = "Easy Browser"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let website = dataSource.websites[indexPath.row]
        
        showWebsite?(website)
    }   
}
