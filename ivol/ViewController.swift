//
//  ViewController.swift
//  ivol
//
//  Created by Kai Ishii on 2023/12/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var tableview: UITableView!
    private var contents = ["Expired", "Tomorrow", "3 days", "1 week", "2 weeks", "1 month", "3 monthes", "More"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = contents[indexPath.row]
        return cell
    }
}

