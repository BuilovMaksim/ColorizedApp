//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Maksim Builov on 24/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARC: - IB Outlets
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var counterValueRedSliderLabel: UILabel!
    @IBOutlet var counterValueGreenSliderLabel: UILabel!
    @IBOutlet var counterValueBlueSliderLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupStartVeiw()
    }
    
    // MARC: IB Actions
    @IBAction func redSliderAction() {
        counterValueRedSliderLabel.text = settingUpLabel(redSlider.value)
        updatingBackgroundMainVeiw()
    }
    
    @IBAction func greenSliderAction() {
        counterValueGreenSliderLabel.text = settingUpLabel(greenSlider.value)
        updatingBackgroundMainVeiw()
    }
    
    @IBAction func blueSliderAction() {
        counterValueBlueSliderLabel.text = settingUpLabel(blueSlider.value)
        updatingBackgroundMainVeiw()
    }
    
    // MARC: - Private Methods
    private func setupStartVeiw () {
        mainView.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        counterValueRedSliderLabel.text = settingUpLabel(redSlider.value)
        counterValueGreenSliderLabel.text = settingUpLabel(greenSlider.value)
        counterValueBlueSliderLabel.text = settingUpLabel(blueSlider.value)
    }
    
    private func settingUpLabel(_ value: Float) -> String {
        String(format: "%.2f", value)
    }
    
    private func updatingBackgroundMainVeiw() {
        mainView.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

