//
//  FirstTVcell.swift
//  Demo1
//
//  Created by Deepankar Gupta on 06/09/22.
//

import UIKit

class FirstTVcell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        nameLbl.layer.cornerRadius = 5.0
        nameLbl.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
