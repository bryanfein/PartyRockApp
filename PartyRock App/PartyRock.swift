//
//  PartyRock.swift
//  PartyRock App
//
//  Created by Bryan Fein on 4/2/17.
//  Copyright © 2017 Bryan Fein. All rights reserved.
//

import Foundation


class PartyRock {
    private var _imageUrl: String!
    private var _videoUrl: String!
    private var _videoTitle: String!
    
    
    
    //create getters so no one can manipulate our data
    var imageURL: String{
        return _imageUrl
    }
    
    var videoURL : String {
        return _videoUrl
    }
    
    
    var videoTitle: String {
        return _videoTitle
    }
    

    //initalize the variables
    init(imageURL: String, videoUrl: String, videoTitle: String){
        
        _imageUrl = imageURL
        _videoUrl = videoUrl
        _videoTitle = videoTitle
        
        
    }
}
