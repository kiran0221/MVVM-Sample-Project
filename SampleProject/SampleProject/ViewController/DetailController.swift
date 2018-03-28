//
//  DetailController.swift
//  SampleProject
//
//  Created by SAIKIRAN on 3/26/18.
//  Copyright © 2018 SAIKIRAN. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    public var response:ResponseViewModel?
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var websiteLbl: UILabel!
    
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let res = response {
            if let num = res.phone,
                let name = res.username,
                let web = res.website,
                let em = res.email
            {
                nameLbl.text = name
                phoneLbl.text = num
                emailLbl.text = em
                websiteLbl.text = web
        }
        // Do any additional setup after loading the view.
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
