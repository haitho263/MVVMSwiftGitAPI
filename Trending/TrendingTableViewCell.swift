//
//  TrendingTableViewCell.swift
//  Trending
//
//  Created by DuongPhuocHaiTho on 1/15/21.
//

import UIKit

class TrendingTableViewCell: UITableViewCell {

  @IBOutlet weak var titleLabel: UILabel!
  override func awakeFromNib() {
    super.awakeFromNib()
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

  }
  
  func configString(text: String) {
    self.titleLabel.text = text
  }
}
