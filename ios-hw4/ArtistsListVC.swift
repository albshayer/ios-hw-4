//
//  ArtistsListVC.swift
//  ios-hw4
//
//  Created by Bedour Albshayer on 10/11/20.
//

import UIKit

class ArtistsListVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return artists.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ArtistCell

        // Configure the cell...
        let artist = artists[indexPath.row]
        cell.configureCell(artist: artist)
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let artist = artists[indexPath.row]
        performSegue(withIdentifier: "details", sender: artist)
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let artist = sender as! Artist
        let vc = segue.destination as! SongsListVC
        vc.songs = artist.songs
    }

}
