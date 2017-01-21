//
//  MusicLisstVC.swift
//  SwapScreen
//
//  Created by Spencer Forrest on 08/12/2016.
//  Copyright © 2016 Spencer Forrest. All rights reserved.
//

import UIKit

class MusicLisstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func BackBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func LoadScreenBtnPressed(_ sender: Any) {
        let songTitle = "Cause I wanted that way"
        performSegue(withIdentifier: "PlaySongVC", sender:songTitle )
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let destination = segue.destination as? PlaySongVC{
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
}
