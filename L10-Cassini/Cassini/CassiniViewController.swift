//
//  CassiniViewController.swift
//  Cassini
//
//  Created by srkn on 18.04.2019.
//  Copyright © 2019 gamini. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if let url = DemoURLs.NASA[identifier] {
                if let ivc = segue.destination.contents as? ImageViewController {
                    ivc.imageURL = url
                    ivc.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }
    
}

extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
