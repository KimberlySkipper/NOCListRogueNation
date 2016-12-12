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
    
    var secretAgent:SecretAgent?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "Security Clearance"
        
        if let actualAgent = secretAgent
        {
            coverNameLabel!.text = actualAgent.coverName
            levelAccessLabel!.text = "Access Level \(actualAgent.accessLevel)"
            realNameLabel!.text = actualAgent.realName
        }

        // Do any additional setup after loading the view.
    }

    
}
