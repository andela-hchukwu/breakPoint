//
//  ShadowView.swift
//  BreakPoint
//
//  Created by Henry Chukwu on 5/18/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }

}
