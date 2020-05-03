//
//  PictureCollectionViewCell.swift
//  CollectionViewDiffableDataSource
//
//  Created by Thanathip Kumnarai on 2/5/2563 BE.
//  Copyright © 2563 Thanathip Kumnarai. All rights reserved.
//

import UIKit

class PictureCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var thumnailView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var picture: Picture? {
        didSet {
            thumnailView.image = picture?.thumnailImage
            titleLabel.text = picture?.title
        }
    }
}
