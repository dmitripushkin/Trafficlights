//
//  ViewController.swift
//  Trafficlights
//
//  Created by Повелитель on 19.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yelowwLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var pushButton: UIButton!
    
    enum LightColor {
        case red
        case yellow
        case green
        case off
    }
    
    var lightColorSet: LightColor = .off
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yelowwLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.layer.masksToBounds = true
        
        yelowwLight.layer.cornerRadius = yelowwLight.frame.width / 2
        yelowwLight.layer.masksToBounds = true
        
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        greenLight.layer.masksToBounds = true
        
        pushButton.layer.cornerRadius = 10
      
       
    }

    @IBAction func tappedPushButton() {
    pushButton.setTitle("NEXT", for: .normal)
    
  
    
    
    switch lightColorSet {
    case .red:
        pushButton.setTitle("NEXT", for: .normal)
        
        redLight.alpha = 1
        yelowwLight.alpha = 0.3
        greenLight.alpha = 0.3
      
        lightColorSet = .yellow
        
    case .yellow:
        pushButton.setTitle("NEXT", for: .normal)
        
        redLight.alpha = 0.3
        yelowwLight.alpha = 1
        greenLight.alpha = 0.3
        
        lightColorSet = .green
        
    case .green:
        pushButton.setTitle("NEXT", for: .normal)
        
        redLight.alpha = 0.3
        yelowwLight.alpha = 0.3
        greenLight.alpha = 1
        
        lightColorSet = .red
  
    case .off:
        lightColorSet = .red
    }
   
    }
    
}

