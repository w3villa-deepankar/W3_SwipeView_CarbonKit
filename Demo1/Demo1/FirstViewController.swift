//
//  FirstViewController.swift
//  Demo1
//
//  Created by Deepankar Gupta on 06/09/22.
//

import UIKit

class FirstViewController: UIViewController {
    
    var ceoArr: [String] = ["Ishank Gupta", "Priyank Gupta", "Pavan Agrawal", ]
    var ceoPostArr: [String] = ["CEO", "Director", "VP- Engineering"]
    var ceoLoactionArr: [String] = ["Noida", "Kanpur", "Noida"]

    @IBOutlet weak var firstTableVIew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ceoArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a new cell if needed or reuse an old one
        let cell:FirstTVcell = (self.firstTableVIew.dequeueReusableCell(withIdentifier: "FirstTVcell") as! FirstTVcell)
        
        // set the text from the data model
        cell.nameLbl?.text = self.ceoArr[indexPath.row]
        cell.positionLbl?.text = self.ceoPostArr[indexPath.row]
        cell.locationLbl?.text = self.ceoLoactionArr[indexPath.row]
                
        return cell
    }
}
