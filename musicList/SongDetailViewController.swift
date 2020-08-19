//
//  SongDetailViewController.swift
//  musicList
//
//  Created by HSIEH CHIH YU on 2020/8/18.
//

import UIKit
import AVFoundation

class SongDetailViewController: UIViewController {
    
    var song: Song!
    var player: AVPlayer?
    var isPlay = false

    @IBOutlet weak var songImageView: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        title = song.trackName
        // Do any additional setup after loading the view.
        URLSession.shared.dataTask(with: song.artworkUrl100) { (data, response, error) in
            if let data = data {
                DispatchQueue.main.async {
                    self.songImageView.image = UIImage(data: data)
                }
            }
        }.resume()
    }
    
    
    @IBAction func playSong(_ sender: Any) {
        if isPlay == false {
            isPlay = true
            playButton.setImage(UIImage(systemName: "stop.fill"), for: .normal)
            player = AVPlayer(url: song.previewUrl)
            player?.play()
            
            NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil, queue: .main) { (_) in
               print("finish, next song")
                self.isPlay = false
                self.playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
            }
            
        } else {
            isPlay = false
            playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
            player?.pause()
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
