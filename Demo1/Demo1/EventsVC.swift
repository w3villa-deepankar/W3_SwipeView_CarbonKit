//
//  EventsVC.swift
//  Demo1
//
//  Created by Deepankar Gupta on 06/09/22.
//

import UIKit

class EventsVC: UIViewController {

    @IBOutlet weak var eventTblView: UITableView!

    var nameArr: [String] = ["Ishank Gupta", "Priyank Gupta", "Gandhi Jayanti"]
    var dateArr: [String] = ["23-11-2022", "3-12-2022", "1-1-2022"]
    var eventNameArr: [String] = ["Bithday", "1st work anniversary", "holiday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension EventsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.nameArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a new cell if needed or reuse an old one
        let cell:EventTVcell = (self.eventTblView.dequeueReusableCell(withIdentifier: "EventTVcell") as! EventTVcell)
        
        // set the text from the data model
        cell.nameLbl?.text = self.nameArr[indexPath.row]
        cell.dateLbl?.text = self.dateArr[indexPath.row]
        cell.eventNameLbl?.text = self.eventNameArr[indexPath.row]
                
        return cell
    }
}
