//
//  ViewController.swift
//  ColorizedApp_SwiftBook
//
//  Created by Сергей Бабич on 04.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        
        setupSlider()
    }
    
    func colorChanged() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1.0
        )
    }
    
    
    @IBAction func rgbChanged(_ sender: Any) {
        colorChanged()
    }
    
    @IBAction func redSliderChanged() {
        redLabel.text = String(round(100*redSlider.value)/100)
    }
    
    
    @IBAction func greenSliderChanged() {
        greenLabel.text = String(round(100*greenSlider.value)/100)
    }
    
    @IBAction func blueSliderChanged() {
        blueLabel.text = String(round(100*blueSlider.value)/100)
    }
    
    
    private func setupSlider() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
    }

}

