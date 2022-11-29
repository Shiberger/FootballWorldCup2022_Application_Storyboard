//
//  TableViewCell.swift
//  Final2.1
//
//  Created by Nattapat Anyachuen on 28/11/2565 BE.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbteam: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
