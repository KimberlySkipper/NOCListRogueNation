//
//  Agent.swift
//  NOC-List
//
//  Created by Kimberly Skipper on 12/6/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import Foundation

//create secret agent class
class SecretAgent
{
    //agent properties
    let coverName: String
    let realName: String
    let accessLevel: String
    
    //how a secret agent is created
    init(coverName: String, realName: String, accessLevel: String)
    {
        self.coverName = coverName
        self.realName = realName
        self.accessLevel = accessLevel
    }
    
    
    //producing agent Array from JSON dictionary file
    static func createAgentFromDictionary( nocDictionaryMadeFromJSONFile: [Any]) -> [SecretAgent]?
    
    {
        var arrayOfAgents = [SecretAgent]()
        
        if nocDictionaryMadeFromJSONFile.count > 0
        {
            
            for anEntry in nocDictionaryMadeFromJSONFile
            {
            //look at each result in the results array and make sure it is a dictionary
            
            //looking for a "key" called collection name and cast it as a string
                if let aSingleAgentDictionary = anEntry as? [String: Any]
            
                {
                     if let aCoverName = aSingleAgentDictionary["coverName"] as? String
                     {
                        if let aRealName = aSingleAgentDictionary["companyName"] as? String
                        {
                            if let anAccessLevel = aSingleAgentDictionary["assessLevel"] as? String
                            {
                                let anAgent = SecretAgent(coverName: aCoverName, realName: aRealName, accessLevel: anAccessLevel)
                                
                               arrayOfAgents.append(anAgent)
                            }
                        }
                     }
                }
                
             }
        }
        return arrayOfAgents
    }
}







