//
//  BeritaTableViewCell.swift
//  BeritaSport
//
//  Created by Rio Ihsan on 04/12/17.
//  Copyright © 2017 Rio Ihsan. All rights reserved.
//

import UIKit

class BeritaTableViewCell: UITableViewCell {
    @IBOutlet weak var judul: UILabel!
    @IBOutlet weak var kategori: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
