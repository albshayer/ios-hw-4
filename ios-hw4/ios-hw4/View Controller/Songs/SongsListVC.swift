//
//  SongsListVC.swift
//  ios-hw4
//
//  Created by Bedour Albshayer on 10/11/20.
//

import UIKit

class SongsListVC: UITableViewController {
    
    var songs: [Song]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songs.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SongCell

        // Configure the cell...
        let song = songs[indexPath.row]
        cell.configureCell(song: song)

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let song = songs[indexPath.row]
        performSegue(withIdentifier: "details", sender: song)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let song = sender as! Song
        let vc = segue.destination as! SongVC
        vc.song = song
    }
   

}
