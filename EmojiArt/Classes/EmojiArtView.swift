//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by Yi Zhang on 2018/12/28.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

import UIKit

class EmojiArtView: UIView {
    
    var backgroundImage: UIImage? { didSet {setNeedsLayout()} }

    override func draw(_ rect: CGRect) {
        backgroundImage?.draw(in: bounds)
    }

}
