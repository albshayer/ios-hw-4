//
//  ArtistCell.swift
//  ios-hw4
//
//  Created by Bedour Albshayer on 10/11/20.
//

import UIKit

class ArtistCell: UITableViewCell {
     
    @IBOutlet weak var artistImageView: UIImageView!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(artist: Artist){
        self.artistImageView.image = UIImage(named: artist.image)
        self.artistNameLabel.text = artist.name
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
