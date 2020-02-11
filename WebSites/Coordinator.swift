//
//  Coordinator.swift
//  WebSites
//
//  Created by slava bily on 11/2/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController {get set}
    var children: [Coordinator] {get set}
    
    func start()
}
