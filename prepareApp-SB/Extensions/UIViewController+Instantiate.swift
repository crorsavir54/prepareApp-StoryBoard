//
//  UIViewController+Instantiate.swift
//  prepareApp-SB
//
//  Created by coriv🧑🏻‍💻 on 11/15/21.
//

import UIKit

extension UIViewController {
    
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "\(T.self)") as! T
        return controller
    }
}

