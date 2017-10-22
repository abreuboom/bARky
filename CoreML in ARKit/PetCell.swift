//
//  PetCell.swift
//  CoreML in ARKit
//
//  Created by John Abreu on 10/21/17.
//  Copyright © 2017 CompanyName. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class PetCell: UITableViewCell {
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var compatibilityView: UIImageView!
    
    var pet: [String: Any]! {
        didSet {
            photoView.image = nil
            compatibilityView.image = nil
            
            photoView.layer.cornerRadius = photoView.frame.width/2
            photoView.mask?.clipsToBounds = true
            
            let name = (pet["name"] as! [String: Any])["$t"] as! String
            let mix = (pet["mix"] as! [String: Any])["$t"] as! String
            let age = (pet["age"] as! [String: Any])["$t"] as! String
            let media = pet["media"] as! [String: Any]
            if let photosDict = media["photos"] as? [String: Any] {
                let photos = photosDict["photo"] as! [[String: Any]]
                let photoDict = photos[0]
                let photoUrlString = photoDict["$t"] as! String
                let photoUrl = URL(string: photoUrlString)
                photoView.af_setImage(withURL: photoUrl!)
                
                print(photoUrl!)
            }
            
            nameLabel.text = name
            ageLabel.text = age
            
            if mix == "yes" {
                breedLabel.text = "Mix"
            } else {
                let breeds = pet["breeds"] as! [String: Any]
                let breed = (breeds["breed"] as! [String: Any])["$t"] as! String
                breedLabel.text = breed
            }
            
            //            Alamofire.request(photoUrl!).responseImage { (response) in
            //                if let imageData = response.result.value {
            //                    let image = imageData.af_imageRounded(withCornerRadius: 25)
            //                    self.photoView?.image = image
            //                }
            //            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
