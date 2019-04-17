//
//  ViewController.swift
//  Wonk'd
//
//  Created by Leelina Dagim on 4/11/19.
//  Copyright © 2019 SwiftTeam. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
 
    @IBOutlet weak var bckgndDark: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var enter: UIButton!
    @IBOutlet weak var homeScreen: UIView!
    @IBOutlet weak var statusBar: UIImageView!
    @IBOutlet weak var heartLight: UIImageView!
    @IBOutlet weak var globeLight: UIImageView!
    @IBOutlet weak var home: UIImageView!
    @IBOutlet weak var welcomeText: UIImageView!
    @IBOutlet weak var houseDark: UIImageView!
    @IBOutlet weak var globeDark: UIImageView!
    @IBOutlet weak var browse: UIImageView!
    @IBOutlet weak var houseLight: UIImageView!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
  
    
    
    
    
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "bloop", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }

    @IBAction func enter(_ sender: Any) {
        homeScreen.isHidden = false
        bckgndDark.isHidden = true
        logo.isHidden = true
        enter.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 0.5, animations: { //ISSUE WITH LOGO ANIMATING UPWARD
            self.logo.frame = CGRect(x: 0, y: 20, width: 317, height: 169)
        }) { (finished) in
            self.homeScreen.isHidden = false
            self.statusBar.isHidden = false
            self.heartLight.isHidden = false
            self.globeLight.isHidden = false
            self.home.isHidden = false
            self.welcomeText.isHidden = false
            self.houseDark.isHidden = false
            self.bckgndDark.isHidden = true
//            self.logo.isHidden = true
        }
    }
    
    //connect tabs as buttons
    //home function
    //browse function
    
    
    
//    @IBAction func enter(_ sender: Any) {
//        homeScreen.isHidden = false
//        bckgndDark.isHidden = true
//        logo.isHidden = true
//        enter.isHidden = true
//
//        player.play()
//
//        UIView.animate(withDuration: 0.5, animations: { //ISSUE WITH LOGO ANIMATING UPWARD
//            self.logo.frame = CGRect(x: 0, y: 20, width: 317, height: 169)
//        }) { (finished) in
//            self.homeScreen.isHidden = false
//            self.statusBar.isHidden = false
//            self.heartLight.isHidden = false
//            self.globeLight.isHidden = false
//            self.home.isHidden = false
//            self.welcomeText.isHidden = false
//            self.houseDark.isHidden = false
//            self.bckgndDark.isHidden = true
//            //            self.logo.isHidden = true
//        }
//    }
    
    
    
    
    
    
    @IBAction func switch1(_ sender: Any) {
        //ideally, names would show up in favorites
    }
    
    @IBAction func switch2(_ sender: Any) {
        
    }
    
    @IBAction func switch3(_ sender: Any) {
        
    }
    
    
    //favorites function
    
    
    
}

