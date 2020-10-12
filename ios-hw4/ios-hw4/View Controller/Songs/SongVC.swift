//
//  SongVC.swift
//  ios-hw4
//
//  Created by Bedour Albshayer on 10/11/20.
//

import UIKit
import AVFoundation


class SongVC: UIViewController {
    
    @IBOutlet weak var songImageView: UIImageView!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!

    

    var songPlayer: AVAudioPlayer?
    
    var song: Song!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       configureView()
       configureSong()

        
        // Do any additional setup after loading the view.
    }
    
    func configureView(){
        songImageView.image = UIImage(named: song.image)
        songNameLabel.text = song.name
        //artistNameLabel.text = song.artist
        
    }
    func configureSong(){
        let path = Bundle.main.path(forResource: song.songName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            songPlayer = try AVAudioPlayer(contentsOf: url)
        } catch {
            // couldn't load file :(
        }
    }
     
    var played: Bool = false
    
    @IBAction func play(_ sender: UIButton) {
        if played{
            songPlayer?.pause()
            sender.setImage(UIImage(systemName: "play.fill"), for: .normal)
        }else{
            songPlayer?.play()
            sender.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            
        }
    }
        @IBAction func forward() {
    }
   
    @IBAction func backward() {
    }
    
    
    
    
    /*
// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

