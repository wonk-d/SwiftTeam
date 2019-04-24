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
//    @IBAction func globeLight(_ sender: Any) {
//    }
    @IBOutlet weak var browseScreen: UIView!
    @IBOutlet weak var globeLight: UIButton!
//    @IBOutlet weak var globeLight: UIImageView! //changed to button in order to get action instead of outlet
    @IBOutlet weak var home: UIImageView!
    @IBOutlet weak var welcomeText: UIImageView!
    @IBOutlet weak var houseDark: UIImageView!
    //    @IBOutlet weak var houseDark: UIImageView!
    @IBOutlet weak var globeDark: UIImageView!
    @IBOutlet weak var browse: UIImageView!
    @IBOutlet weak var houseLight: UIImageView!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
  
    @IBOutlet weak var favoriteScreen: UIView!
    @IBOutlet weak var favorite: UIImageView!
    
    
    
    
    
    
    
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
            self.logo.frame = CGRect(x: 0, y: 20, width: 317, height: 169) //whaaaa? x positon allows it to go up instead of to the left
        }) { (finished) in
            self.homeScreen.isHidden = false
            self.statusBar.isHidden = true
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
    
    @IBAction func globeLight(_ sender: Any) {
      //isHidden = false
        //browse
//        browseScreen.isHidden = false
        browse.isHidden = false
        //switches
        switch1.isHidden = false
        switch2.isHidden = false
        switch3.isHidden = false
        //labels
        label1.isHidden = false
        label2.isHidden = false
        label3.isHidden = false
        //tabs
        heartLight.isHidden = false
        globeLight.isHidden = false
        home.isHidden = false
        //status bar
        statusBar.isHidden = true
        
    UIView.animate(withDuration: 0.5, animations: {
            self.globeLight.frame = CGRect(x: 15, y: 710, width: 123, height: 65)
        
        }) { (finished) in
            //isHidden = true
            //home
            self.houseDark.isHidden = false
            //welcome text
            self.welcomeText.isHidden = true
            //tabs
//            self.heartLight.isHidden = false
            self.globeDark.isHidden = false
          //  self.houseLight.isHidden = false
            //status bar
            self.statusBar.isHidden = true
            //browse view
            self.browseScreen.isHidden = false
            self.switch1.isHidden = false
            self.switch2.isHidden = false
            self.switch3.isHidden = false
            //labels
            self.label1.isHidden = false
            self.label2.isHidden = false
            self.label3.isHidden = false
            
        }
        
    }

    
    @IBAction func houseLight(_ sender: Any) {
        //        homeScreen.isHidden = false
        globeLight.isHidden = false
        heartLight.isHidden = false
        welcomeText.isHidden = false
        houseLight.isHidden = false
        home.isHidden = false
        
        UIView.animate(withDuration: 0.5, animations: { //ISSUE WITH LOGO ANIMATING UPWARD
            self.houseLight.frame = CGRect(x: 155, y: 710, width: 123, height: 65)
        }) { (finished) in
            self.browseScreen.isHidden = false
            self.statusBar.isHidden = true
            self.heartLight.isHidden = false
            self.globeLight.isHidden = false
            self.home.isHidden = false
            self.welcomeText.isHidden = false
            self.houseLight.isHidden = false
            self.bckgndDark.isHidden = true
            //            self.logo.isHidden = true
        }
    }
    

    
//   @IBAction func houseLight(_ sender: Any) {
//
//    }
    
    
    @IBAction func heartLight(_ sender: Any) {
    }
    
    
    
    //need to set prev. screen tab position to the right spot to make tabs animate up and stay at that position
    
    
    
    
    
    
   
    
    @IBAction func switch1(_ sender: Any) {
        //ideally, names would show up in favorites
    }

    @IBAction func switch2(_ sender: Any) {

    }

    @IBAction func switch3(_ sender: Any) {

    }
    
    
    //favorites function
    
    
    @IBAction func head1(_ sender: Any) {
        
    }
    
    
    @IBAction func head2(_ sender: Any) {
        
    }
    
    
    
    @IBAction func head3(_ sender: Any) {
        
    }
    
    
    
    @IBAction func head4(_ sender: Any) {
        
    }
    

    
    @IBAction func head5(_ sender: Any) {
        
    }
    
    
    
    @IBAction func head6(_ sender: Any) {
        
    }
    
    
    

    
    
    
    
    
}

