//
//  Picture.swift
//  CollectionViewDiffableDataSource
//
//  Created by Thanathip Kumnarai on 2/5/2563 BE.
//  Copyright © 2563 Thanathip Kumnarai. All rights reserved.
//

import UIKit

class Picture {
    var id: Int
    var title: String
    var thumnailImage: UIImage?
    
    init(id: Int, title: String, thumnailImage: UIImage? = nil) {
        self.id = id
        self.title = title
        self.thumnailImage = thumnailImage
    }
    
}

extension Picture {
    static let all = [
        Picture(
            id: 0,
            title: "พระอาทิตย์ตกในเมือง",
            thumnailImage: UIImage(named: "sunset2")
        ),
        Picture(
            id: 1,
            title: "พระอาทิตย์ตกบนภูเขา",
            thumnailImage: UIImage(named: "sunset")
        ),
        Picture(
            id: 2,
            title: "ทะเล",
            thumnailImage: UIImage(named: "sea")
        ),
        Picture(
            id: 3,
            title: "ภูเขาที่ทองผาภูมิ",
            thumnailImage: UIImage(named: "moutain")
        ),
        Picture(
            id: 4,
            title: "ต้นไม้ 1",
            thumnailImage: UIImage(named: "tree1")
        ),
        Picture(
            id: 4,
            title: "ต้นกุหลาบพันปี",
            thumnailImage: UIImage(named: "tree")
        ),
        Picture(
            id: 5,
            title: "ภูเขาที่ทองผาภูมิ 2",
            thumnailImage: UIImage(named: "moutain2")
        ),
        Picture(
            id: 6,
            title: "ภูเขาที่ดอยอินทนนท์",
            thumnailImage: UIImage(named: "moutain3")
        ),
        Picture(
            id: 7,
            title: "เขื่อนเชี่ยวหลาน",
            thumnailImage: UIImage(named: "dam")
        )
    ]
}
