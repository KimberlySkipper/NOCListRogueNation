//
//  DetailViewController.swift
//  NOC-List
//
//  Created by Kimberly Skipper on 12/6/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var levelAccessLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    
    var secretAgent:SecretAgent!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "Security Clearance"
        
        self.coverNameLabel.text = self.secretAgent.coverName
        self.levelAccessLabel.text = String(self.secretAgent.accessLevel)
        self.realNameLabel.text = self.secretAgent.realName

        // Do any additional setup after loading the view.
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
