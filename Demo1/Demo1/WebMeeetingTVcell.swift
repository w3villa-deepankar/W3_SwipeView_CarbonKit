//
//  WebMeeetingTVcell.swift
//  Demo1
//
//  Created by Deepankar Gupta on 06/09/22.
//

import UIKit

class WebMeeetingTVcell: UITableViewCell {

    @IBOutlet weak var tokenName: UILabel!
    @IBOutlet weak var startDate: UILabel!
    @IBOutlet weak var endDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
