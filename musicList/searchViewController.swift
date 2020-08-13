//
//  searchViewController.swift
//  musicList
//
//  Created by HSIEH CHIH YU on 2020/8/13.
//

import UIKit

class searchViewController: UIViewController {

    var country = "US"
    

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var countrySegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBSegueAction func showResult(_ coder: NSCoder) -> musicListTableViewController? {
        let artist = String(searchTextField.text!)
        let controller = musicListTableViewController(coder: coder)
        controller?.searchText = SearchInfo(artist: artist, country: country)
        return controller
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if searchTextField.text?.isEmpty != true {
            return true
        } else {
            return false
        }
    }
    
    
    @IBAction func changeCountry(_ sender: UISegmentedControl) {
        switch countrySegmentedControl.selectedSegmentIndex {
        case 0:
            country = "US"
        case 1:
            country = "TW"
        case 2:
            country = "JP"
        default:
            break
        }
    }
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
*/

}
