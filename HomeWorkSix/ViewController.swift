//
//  ViewController.swift
//  HomeWorkSix
//
//  Created by Владислав Сизонов on 31.10.2020.
//

import UIKit

protocol ColorDelegate {
    func saveColor(red: CGFloat, green: CGFloat, blue: CGFloat)
    
}

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorisedVC = segue.destination as! ColorisedViewController
        colorisedVC.delegate = self
        let colorisedVCTwo = segue.destination as! ColorisedViewController
        colorisedVCTwo.colorOfView = mainView.backgroundColor
    }


}

extension ViewController: ColorDelegate {
    func saveColor(red: CGFloat,
                   green: CGFloat,
                   blue: CGFloat) {
        mainView.backgroundColor = UIColor(red: red,
                                           green: green,
                                           blue: blue,
                                           alpha: 1)
    }
}

