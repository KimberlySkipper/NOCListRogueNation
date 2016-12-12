//
//  AgentTableViewController.swift
//  NOC-List
//
//  Created by Kimberly Skipper on 12/6/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class AgentTableViewController: UITableViewController
{
    //array of dictionaries
    var myAgentArray = [SecretAgent]()
    

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.loadNOCList()
    }

//MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
                return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myAgentArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AgentCell", for: indexPath)

        let anAgent = myAgentArray[indexPath.row]
        cell.textLabel?.text = anAgent.coverName
        cell.detailTextLabel?.text = anAgent.realName
        
        return cell
    }
    
   

    func loadNOCList ()
    {
        
       let bundle = Bundle(for: type(of: self))
        if let theURL = bundle.url(forResource: "NOC", withExtension: "json")
        {
            do
            {
                let data = try Data(contentsOf: theURL)
               if let arrayOfDictionaries = try? JSONSerialization.jsonObject(with: data) as! [Any]
               {
  
                if let createAnArray = SecretAgent.createAgentArrayFromDictionary(nocDictionaryMadeFromJSONFile: arrayOfDictionaries)
                {
                    self.myAgentArray = createAnArray
                    self.tableView.reloadData()
                }

                
                }
            }
           catch
           {
               print(error)
           }
       }
    }
    
// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "DetailViewSegue"
        {
            // Get the new view controller using segue.destinationViewController.
            let detailVC = segue.destination as! DetailViewController
            let indexPath = tableView.indexPathForSelectedRow!
            let oneAgent = myAgentArray[indexPath.row]
            detailVC.secretAgent = oneAgent
        }
        
    }

}
