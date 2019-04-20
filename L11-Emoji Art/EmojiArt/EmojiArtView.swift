//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by srkn on 20.04.2019.
//  Copyright © 2019 gamini. All rights reserved.
//

import UIKit

class EmojiArtView: UIView {
    
    var backgroundImage: UIImage? {
        didSet{
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        backgroundImage?.draw(in: bounds)
    }
    
}
