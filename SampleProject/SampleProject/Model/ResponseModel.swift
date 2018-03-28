//
//  Response.swift
//  SampleProject
//
//  Created by SAIKIRAN on 3/25/18.
//  Copyright © 2018 SAIKIRAN. All rights reserved.
//

import Foundation


class ResponseModel:Codable
{
    var city: String!
    var lat: String!
    var lng: String!
    var street: String!
    var suite: String!
    var zipcode: String!
    var bs: String!
    var catchPhrase: String!
    var c_name: String!
    var email: String!
    var id: Int!
    var name: String!
    var phone: String!
    var username: String!
    var website: String!
    
    init?(dictionary :Dictionary<String, Any>)
    {
        var adddict = dictionary["address"] as! Dictionary<String, Any>
        var geodict = adddict["geo"] as! Dictionary<String, Any>
        var companydict = dictionary["company"] as! Dictionary<String, Any>
            
        self.city = adddict["city"] as! String
        self.lat = geodict["lat"] as! String
        self.lng = geodict["lng"] as! String
        self.street = adddict["street"] as! String
        self.suite = adddict["suite"] as! String
        self.zipcode = adddict["zipcode"] as! String
        self.bs = companydict["bs"] as! String
        self.catchPhrase = companydict["catchPhrase"] as! String
        self.c_name = companydict["name"] as! String
        self.email = dictionary["email"] as! String
        self.name = dictionary["name"] as! String
        self.phone = dictionary["phone"] as! String
        self.username = dictionary["username"] as! String
        self.website = dictionary["website"] as! String
        
    }
}


