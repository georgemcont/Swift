//  ViewController.swift
//  BullsEye
//
//  Created by George Roy on 7/16/18.
//  Copyright © 2018 George Roy. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    var currentValueOfSlider: Int = 0
    @IBOutlet weak var targetLabel: UILabel!
    var targetValue: Int = 0
    var difference: Int = 0
    var points: Int = 0
    @IBOutlet weak var scoreValue: UILabel!
    @IBOutlet weak var roundValue: UILabel!
    var differenceRating: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewDidLoadValues()
        
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")//UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")//UIImage(named: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = #imageLiteral(resourceName: "SliderTrackLeft")//UIImage(named: "SliderTrackLeft")
        //let trackLeftResizable = trackLeftImage?.resizableImage(withCapInsets: insets)
        let trackLeftResizable = trackLeftImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftResizable, for: .normal)
        
        let trackRightImage = #imageLiteral(resourceName: "SliderTrackRight")//UIImage(named: "SliderTrackRight")
        let trackRightResizable = trackRightImage.resizableImage(withCapInsets: insets)
        //let trackRightResizable = trackRightImage.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(trackRightResizable, for: .normal)
        
    }
    
    func viewDidLoadValues() {
        targetValue = Int(arc4random_uniform(101))
        targetLabel.text = String(targetValue)
        currentValueOfSlider = Int(slider.value)
    }
    
    func nextRound() {
        viewDidLoadValues()
        let scoreValueCal = Int(scoreValue.text!)
        let roundValueCal = Int(roundValue.text!)
        points = 100 - difference
        scoreValue.text = String(points + scoreValueCal!)
        roundValue.text = String(roundValueCal! + 1)
    }
    
    func incrementPoints() {
        if targetValue < currentValueOfSlider {
            difference = currentValueOfSlider - targetValue
        } else if targetValue > currentValueOfSlider {
            difference = targetValue - currentValueOfSlider
        } else {
            difference = 0
        }
        
        if difference == 0 {
            differenceRating = "Perfect"
        } else if difference < 6 {
            differenceRating = "Pretty Close"
        } else if difference > 5 && difference < 10 {
            differenceRating = "Good Try"
        } else if difference > 10 {
            differenceRating = "Not Even Close"
        }

    }
    
    @IBAction func startOver() {
        scoreValue.text = "0"
        roundValue.text = "1"
        viewDidLoadValues()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValueOfSlider = Int(slider.value)
    }
    
    @IBAction func showAlert() {
        incrementPoints()
        let alertPopup = UIAlertController(title: differenceRating, message: "We asked for \(targetValue) \n You adjusted the Slider value to \(currentValueOfSlider)", preferredStyle: .alert)
        let actionPopup = UIAlertAction(title: "Close", style: .default, handler:
        {
            action in
            self.nextRound()
        })
        alertPopup.addAction(actionPopup)
        present(alertPopup, animated: true, completion: nil)
        
    }
}

