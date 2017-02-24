//
//  TableViewController.swift
//  ODRefreshControl
//
//  Created by doom on 2017/2/24.
//  Copyright © 2017年 doom. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let refresh = ODRefreshControl(scrollView: self.tableView)
        refresh.addTarget(self, action: #selector(dropViewDidBeginRefreshing(refreshController:)), for: .valueChanged)
    }
    
    func dropViewDidBeginRefreshing(refreshController: ODRefreshControl){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            refreshController.endRefreshing()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
