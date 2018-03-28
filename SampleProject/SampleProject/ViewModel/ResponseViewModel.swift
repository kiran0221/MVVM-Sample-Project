//
//  ResponseViewModel.swift
//  SampleProject
//
//  Created by SAIKIRAN on 3/25/18.
//  Copyright © 2018 SAIKIRAN. All rights reserved.
//

import Foundation


class ResponseViewModel {
    
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
    
    init(response :ResponseModel) {
        
        self.city = response.city
        self.lat = response.lat
        self.lng = response.lng
        self.street = response.street
        self.suite = response.suite
        self.zipcode = response.zipcode
        self.bs = response.bs
        self.catchPhrase = response.catchPhrase
        self.c_name = response.c_name
        self.email = response.email
        self.id = response.id
        self.street = response.street
        self.phone = response.phone
        self.username = response.username
        self.website = response.website
        
    }
}




class ResponseListViewModel {
    
    var responseValue :[ResponseViewModel] = [ResponseViewModel]()
    
    init(webservice :webService, completion :@escaping () -> ()) {
        
        webservice.loadResponse { Response in
            
            self.responseValue = Response.map(ResponseViewModel.init)
            
            DispatchQueue.main.async {
                completion()
            }
            
        }
        
    }
    
    
    
    
//    func populateresponse(_ response :[Response]) {
//        self.responseValue = response.map(ResponseViewModel.init)
//    }
}
