//
//  DepositsCell.swift
//  money-management-app
//
//  Created by Erlis Ibraimi on 24.4.21.
//

import UIKit

class InputsCell: UITableViewCell {

    
    @IBOutlet var type: UILabel!
    @IBOutlet var date: UILabel!
    @IBOutlet var category: UILabel!
    @IBOutlet var amount: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
