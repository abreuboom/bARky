//
//  StepOne.swift
//  CoreML in ARKit
//
//  Created by Yasmeen Roumie on 10/21/17.
//  Copyright © 2017 CompanyName. All rights reserved.
//

import UIKit
import Lottie

class StepOne: UIViewController {
    
    var volume = 0

    let animationView = LOTAnimationView(name: "40-VolumeDial.json")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 450)
        animationView.contentMode = .scaleAspectFill
        
        animationView.loopAnimation = true
        
        self.view.addSubview(animationView)
        
        animationView.play()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        animationView.play()
    }
    
    @IBAction func lowVolume(_ sender: UIButton) {
        volume = -1
    }
    
    @IBAction func midVolume(_ sender: UIButton) {
        
    }
    
    @IBAction func maxVolume(_ sender: UIButton) {
        volume = 1
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
