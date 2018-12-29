//
//  EmojiArtViewController.swift
//  EmojiArt
//
//  Created by Yi Zhang on 2018/12/28.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

import UIKit

class EmojiArtViewController: UIViewController
{
    @IBOutlet weak var dropZone: UIView! {
        didSet {
            dropZone.addInteraction(UIDropInteraction(delegate: self))
        }
    }
    
    @IBOutlet weak var emojiArtView: EmojiArtView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension EmojiArtViewController: UIDropInteractionDelegate {
    // 判断session是否可处理items
    func dropInteraction(_ interaction: UIDropInteraction, canHandle session: UIDropSession) -> Bool {
        return session.canLoadObjects(ofClass: NSURL.self) && session.canLoadObjects(ofClass: UIImage.self)
    }
    
    func dropInteraction(_ interaction: UIDropInteraction, sessionDidUpdate session: UIDropSession) -> UIDropProposal {
        return UIDropProposal(operation: .copy)
    }
    
    func dropInteraction(_ interaction: UIDropInteraction, performDrop session: UIDropSession) {
        session.loadObjects(ofClass: NSURL.self) { (nsurls) in
            
        }
        session.loadObjects(ofClass: UIImage.self) { (images) in
            
        }
    }
}
