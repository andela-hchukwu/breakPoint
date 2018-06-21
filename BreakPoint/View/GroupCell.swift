//
//  GroupCell.swift
//  BreakPoint
//
//  Created by Henry Chukwu on 6/19/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescriptionLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!

    func configureCell(title: String, description: String, memberCount: Int) {

        self.groupTitleLbl.text = title
        self.groupDescriptionLbl.text = description
        self.memberCountLbl.text = "\(memberCount) members."
    }
}
