//
//  ViewController.swift
//  HustleUp
//
//  Created by Martin Ševčík on 19/02/2019.
//  Copyright © 2019 Martin Ševčík. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var CloudHolder: UIView!
    @IBOutlet weak var Rocket: UIImageView!
    @IBOutlet weak var cloudsAndOrangeOval: UIImageView!
    @IBOutlet weak var Lbl: UILabel!
    @IBOutlet weak var On: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }
    
    
    @IBAction func buttonClick(_ sender: Any) {
    CloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        Button.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.Rocket.frame = CGRect(x: 0, y: 30, width: 375, height: 667)
        }) { (finished) in
            self.Lbl.isHidden = false
            self.On.isHidden = false
        }
}
}

