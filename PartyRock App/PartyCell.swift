//
//  PartyCell.swift
//  PartyRock App
//
//  Created by Bryan Fein on 4/2/17.
//  Copyright © 2017 Bryan Fein. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    
    
    }

    
    func updateUI(partyRock: PartyRock){
        
        videoTitle.text = partyRock.videoTitle

        if let url = URL(string: partyRock.imageURL) {
        
        //Can change Main to Gobal
        DispatchQueue.global().async { //using a background thread to download the images
            do {
                let data = try Data(contentsOf: url) //we have the data
                DispatchQueue.main.async  { //now throw it on the user interface
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }catch {
                //handel the error
            }
        }
    
        }
    
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
