//
//  ViewController.swift
//  PartyRock App
//
//  Created by Bryan Fein on 4/1/17.
//  Copyright © 2017 Bryan Fein. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableVeiw: UITableView!
    var partyRockArray = [PartyRock]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let urlOne = PartyRock(imageURL:"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/17757456_1499318626766522_6619791612085524008_n.png?oh=27035d99206b61c662a74cf7ba3d1a35&oe=599AF109", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/b8GxGVlO04U\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Mafia B - Come With Me")
        
        
        
        
        
        print(urlOne.imageURL)

        
        let urlTwo = PartyRock(imageURL: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/17191091_1469890113042707_4537653710039544565_n.png?oh=ca75587a6e3e08008e09959161a6b350&oe=595D11A9", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xIp22QD35DM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Mafia B - Let Go")
        
        let urlThree = PartyRock(imageURL: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/15356621_1380767878621598_4916491439204360763_n.png?oh=74ce116f9a2354a8342b13bdeaa0d5cf&oe=5953CD06", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/35XksNFnMMI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Mafia B - Remember")
        
        let urlFour = PartyRock(imageURL: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/15356621_1380767878621598_4916491439204360763_n.png?oh=74ce116f9a2354a8342b13bdeaa0d5cf&oe=5953CD06", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_voXNiX-AIo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Mafia B - Paradox")
        
        let urlFive = PartyRock(imageURL: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/15356621_1380767878621598_4916491439204360763_n.png?oh=74ce116f9a2354a8342b13bdeaa0d5cf&oe=5953CD06", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/akAbrbxZeIs\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Mafia B - Nav Control")
        
        
        partyRockArray.append(urlOne)
        partyRockArray.append(urlTwo)
        partyRockArray.append(urlThree)
        partyRockArray.append(urlFour)
        partyRockArray.append(urlFive)
        
        
        tableVeiw.delegate = self
        tableVeiw.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell = tableVeiw.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRockArray[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRockArray.count
        
        
        
    }
}




