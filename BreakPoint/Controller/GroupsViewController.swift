//
//  SecondViewController.swift
//  BreakPoint
//
//  Created by Henry Chukwu on 5/8/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController {

    @IBOutlet weak var groupsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        groupsTableView.delegate = self
        groupsTableView.dataSource = self
    }


}

extension GroupsViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell") as? GroupCell else { return UITableViewCell() }
        cell.configureCell(title: "Nerd Nerd", description: "The nerdest nerd around", memberCount: 3)
        return cell
    }
}
