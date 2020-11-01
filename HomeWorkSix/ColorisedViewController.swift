//
//  ColorisedViewController.swift
//  HomeWorkSix
//
//  Created by Владислав Сизонов on 31.10.2020.
//

import UIKit

class ColorisedViewController: UIViewController {

    @IBOutlet var doneButton: UIButton!
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var delegate: ColorDelegate!
    var colorOfView: UIColor!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorView.layer.cornerRadius = 15
        colorView.backgroundColor = colorOfView
        
        //setColor()
        redLabel.text =
            String(format: "%.2f", redSlider.value)
        greenLabel.text =
            String(format: "%.2f", greenSlider.value)
        blueLabel.text =
            String(format: "%.2f", blueSlider.value)
    }
    

    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        redLabel.text =
            String(format: "%.2f", redSlider.value)
        greenLabel.text =
            String(format: "%.2f", greenSlider.value)
        blueLabel.text =
            String(format: "%.2f", blueSlider.value)
        
    }
    
    @IBAction func doneButtonPressed() {
        delegate.saveColor(red: CGFloat(redSlider.value),
                           green: CGFloat(greenSlider.value),
                           blue: CGFloat(blueSlider.value))
        dismiss(animated: true)
    }
    
    private func setColor() {
        colorView.backgroundColor =
            UIColor(red: CGFloat(redSlider.value),
                    green: CGFloat(greenSlider.value),
                    blue: CGFloat(blueSlider.value),
                    alpha: 1)
    }
    
}
