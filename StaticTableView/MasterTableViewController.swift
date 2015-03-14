//
//  MasterTableViewController.swift
//  StaticTableView
//
//  Created by Tobias Hähnel on 14/03/15.
//  Copyright (c) 2015 StackOverflow. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    
    @IBOutlet weak var detailCell: UITableViewCell!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // loading customized tableViewCell
        let nib = UINib(nibName: "FirstDetailView", bundle: nil)
        let nibs = nib.instantiateWithOwner(self, options:nil)
        let firstDetailView = nibs.first as? FirstDetailView
        if let firstView = firstDetailView {
            detailCell.contentView.addSubview(firstView)
        }
    }
}
