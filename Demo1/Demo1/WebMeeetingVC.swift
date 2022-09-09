//
//  WebMeeetingVC.swift
//  Demo1
//
//  Created by Deepankar Gupta on 06/09/22.
//

import UIKit

class WebMeeetingVC: UIViewController {
    
    @IBOutlet weak var WebMeeetingTblView: UITableView!
    
    var tokenArr: [String] = ["123-4567-890-123 - \"Ruby on rails\" ", "qwe-123-rtyy-45667 - \"System Design\" ", "asd-567-ghj-890 - \" JAVA \""]
    var startDateArr: [String] = ["23-11-2022 11:23 A.M.", "1-12-2022 10:00 A.M.", "12-12-2022 12:00 P.M"]
    var endDateArr: [String] = ["23-11-2022 12:23 A.M.", "1-12-2022 12:00 A.M.", "12-12-2022 1:00 P.M."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension WebMeeetingVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tokenArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a new cell if needed or reuse an old one
        let cell:WebMeeetingTVcell = (self.WebMeeetingTblView.dequeueReusableCell(withIdentifier: "WebMeeetingTVcell") as! WebMeeetingTVcell)
        
        // set the text from the data model
        cell.tokenName?.text = self.tokenArr[indexPath.row]
        cell.startDate?.text = "START AT:-> " + self.startDateArr[indexPath.row]
        cell.endDate?.text = "END AT:-> " + self.endDateArr[indexPath.row]
                
        return cell
    }
}
