//
//  GroupFeedViewController.swift
//  BreakPoint
//
//  Created by Henry Chukwu on 6/21/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit

class GroupFeedViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var membersLbl: UILabel!
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var messageTextField: InsetTextField!
    @IBOutlet weak var sendBtn: UIButton!

    var group: Group?

    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindToKeyboard()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        groupTitleLbl.text = group?.groupTitle
        DataService.instance.getEmailsFor(group: group!) { (returnedEmails) in
            self.membersLbl.text = returnedEmails.joined(separator: ", ")
        }
    }

    func initData(forGroup group: Group) {
        self.group = group

    }

    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }

    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
