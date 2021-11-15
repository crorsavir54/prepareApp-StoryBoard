//
//  UIImage+Extensions.swift
//  prepareApp-SB
//
//  Created by coriv🧑🏻‍💻 on 11/15/21.
//

import UIKit


extension UIImage {
    
    func sameAspectRatio(newHeight: CGFloat) -> UIImage {
        let scale = newHeight / size.height
        let newWidth = size.width * scale
        let newSize = CGSize(width: newWidth, height: newHeight)
        return UIGraphicsImageRenderer(size: newSize).image { _ in
            self.draw(in: .init(origin: .zero, size: newSize))
        }
    }
}
