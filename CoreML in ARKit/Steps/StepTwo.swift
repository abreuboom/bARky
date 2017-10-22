//
//  StepTwo.swift
//  CoreML in ARKit
//
//  Created by Yasmeen Roumie on 10/21/17.
//  Copyright © 2017 CompanyName. All rights reserved.
//

import UIKit

class StepTwo: UIViewController {
    
    @IBOutlet weak var nearYouView: FoundBreedView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nearYouView.roundCorners(corners: .allCorners, radius: 25)
        
//        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut, .autoreverse, .repeat], animations: {
//            self.nearYouView.transform = CGAffineTransform(scaleX: 1.02, y: 1.02)
//        }, completion: nil)
        
        // Do any additional setup after loading the view.
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
