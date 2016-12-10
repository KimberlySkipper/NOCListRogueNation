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
    var myAgentArray = [String]()
    //var myNocDictionary = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

     //MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
                return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myAgentArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AgentCell", for: indexPath)

        // Configure the cell...

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
               if let parsedData = try? JSONSerialization.jsonObject(with: data) as! [String:Any]
               {
  
                 print(parsedData)
                }
   }
           catch
           {
               print(error)
           }
       }
    }
    
    
    
    
    
}

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


