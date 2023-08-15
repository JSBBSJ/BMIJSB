//
//  VideoViewController.swift
//  BmiJSB
//
//  Created by 소프트웨어컴퓨터 on 2022/12/05.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    @IBAction func playVideo(_ sender: UIButton) {
        let file:String? = Bundle.main.path(forResource:"bmi", ofType: "mp4")
        let url = NSURL(fileURLWithPath: file!)
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true)
        player.play()    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    



}
