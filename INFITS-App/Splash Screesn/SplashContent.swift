//
//  SplashContent.swift
//  INFITS-App
//
//  Created by Rajni Banduni on 09/02/23.
//

import Foundation

struct SplashContent : Identifiable, Equatable {
    let id = UUID()
    var imageUrl:String
    var title:String
    var description:String
    var tag:Int
    
        static var samplePage = SplashContent(imageUrl: "image01", title: "Feature 1", description: "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod temporincididunt ut labore et doloremagna aliqua.", tag: 0)
   
}
 
let content = [
    
    SplashContent(imageUrl: "image01",
                  title: "Feature 1",
                  description: "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod temporincididunt ut labore et doloremagna aliqua.",
                  tag: 0),
    
    SplashContent(imageUrl: "image01",
                  title: "Feature 2",
                  description: "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod temporincididunt ut labore et doloremagna aliqua.",
                  tag: 1),
    
    SplashContent(imageUrl: "image01",
                  title: "Feature 3",
                  description: "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod temporincididunt ut labore et doloremagna aliqua.",
                  tag: 2),
    
    SplashContent(imageUrl: "image01",
                  title: "Feature 3",
                  description: "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod temporincididunt ut labore et doloremagna aliqua.",
                  tag: 3)
]
