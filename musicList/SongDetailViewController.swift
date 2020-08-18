//
//  SongDetailViewController.swift
//  musicList
//
//  Created by HSIEH CHIH YU on 2020/8/18.
//

import UIKit

class SongDetailViewController: UIViewController {
    
    var song: Song!

    @IBOutlet weak var songImageView: UIImageView!
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
