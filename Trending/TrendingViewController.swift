//
//  TrendingViewController.swift
//  Trending
//
//  Created by DuongPhuocHaiTho on 1/15/21.
//

import UIKit
import SwifterSwift

class TrendingViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    configTableView()
  }

  func configTableView() {
    tableView.register(nibWithCellClass: TrendingTableViewCell.self)
    tableView.delegate = self
    tableView.dataSource = self
  }
}

extension TrendingViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withClass: TrendingTableViewCell.self, for: indexPath)
    cell.titleLabel.text = String(indexPath.row)
    return cell
  }
}

extension TrendingViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 130
  }
}

