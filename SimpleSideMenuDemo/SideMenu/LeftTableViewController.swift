//
//  LeftTableViewController.swift
//  Airhoc
//
//  Created by Miralem Cebic on 15/08/16.
//
//

import UIKit

class LeftTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if (tableView(tableView: self.tableView, numberOfRowsInSection: 1) == 0 ) {
            let emptyStateLabel = UILabel(frame: tableView.frame)
            emptyStateLabel.text = "At this time, nothing is here."

            // style it as necessary

            tableView.backgroundView = emptyStateLabel
        } else {
            tableView.backgroundView = nil
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 0
    }


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeftTableViewControllerCellIdentifier", for: indexPath)
        // Configure the cell..
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.text = "Start"

        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch (indexPath.row) {
        case 0:
            self.sideMenuViewController!.setContentViewController(contentViewController: UINavigationController.init(rootViewController: self.storyboard!.instantiateViewController(withIdentifier: "firstViewController")), animated: true)
            self.sideMenuViewController!.hideMenuViewController()
            break
        case 1:
            self.sideMenuViewController!.setContentViewController(contentViewController:UINavigationController.init(rootViewController: self.storyboard!.instantiateViewController(withIdentifier: "secondViewController")), animated: true)
            self.sideMenuViewController!.hideMenuViewController()
            break
        default:
            break
        }
    }
}
