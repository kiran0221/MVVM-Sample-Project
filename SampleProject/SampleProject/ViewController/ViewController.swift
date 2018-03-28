//
//  ViewController.swift
//  SampleProject
//
//  Created by SAIKIRAN on 3/25/18.
//  Copyright © 2018 SAIKIRAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var listTable: UITableView!
    private var responseListViewModel :ResponseListViewModel!
    private var webservice :webService = webService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTable.delegate = self
        listTable.dataSource = self
        self.responseListViewModel = ResponseListViewModel.init(webservice: self.webservice, completion:
            {
                print(self.responseListViewModel)
                self.listTable.reloadData()
        })
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension ViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailController") as! DetailController
        detailVC.response = self.responseListViewModel.responseValue[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90;
    }
}

extension ViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.responseListViewModel.responseValue.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! cellTableViewCell
        let response = self.responseListViewModel.responseValue[indexPath.row]
        cell.nameLabel.text = response.username
        cell.phoneLabel.text = response.phone
        return cell
    }
    
    
}


