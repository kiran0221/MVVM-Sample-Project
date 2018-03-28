//
//  webService.swift
//  SampleProject
//
//  Created by SAIKIRAN on 3/25/18.
//  Copyright © 2018 SAIKIRAN. All rights reserved.
//

import UIKit
import Foundation

let url:URL = URL.init(string: "https://jsonplaceholder.typicode.com/users")!

typealias JSONDictionary = [String:Any]

class webService
{

    func loadResponse(completion :@escaping ([ResponseModel]) -> ())
    {
        URLSession.shared.dataTask(with: url){data,_,_ in
            
            if let ldata = data
            {
                let json = try! JSONSerialization.jsonObject(with: ldata, options: [])
                let Arraydictionaries = json as! Array<Dictionary<String, Any>>
                
                DispatchQueue.main.async
                {
                    completion(Arraydictionaries.flatMap(ResponseModel.init))
                }
            }
           
            
        }.resume()
        
    }
    
}
