//
//  ViewController.swift
//  HackerNewsInTraining
//
//  Created by GGS-BKS on 10/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var hitsArray : [Hits] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        ApiManager().getNewsFrom(url: "https://hn.algolia.com/api/v1/search?tags=front_page"){ [self]
            responseFromServer in
            print(responseFromServer)
            self.hitsArray = responseFromServer.hits
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
           
        }
        
    }
    
}
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hitsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? NewCell
        cell?.label.text = hitsArray[indexPath.row].title
        return cell!
    }
    
    
}
