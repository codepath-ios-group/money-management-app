//
//  DepositsCell.swift
//  money-management-app
//
//  Created by Erlis Ibraimi on 24.4.21.
//

import UIKit

class DepositsCell: UITableViewCell {

    @IBOutlet weak var dateDeposit: UILabel!
    @IBOutlet weak var deposits: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
