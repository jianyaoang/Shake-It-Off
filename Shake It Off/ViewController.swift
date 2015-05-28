//
//  ViewController.swift
//  Shake It Off
//
//  Created by VLT Labs on 5/28/15.
//  Copyright (c) 2015 Jay Ang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        createSwipeGestures()
    }
    
    func createSwipeGestures() {
        
        var swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
        var swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
        
        var swipeDown = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeDown)
    }
    
    func swiped(gesture: UIGestureRecognizer) {
        
    if let swipeGesture = gesture as? UISwipeGestureRecognizer {
        
            switch swipeGesture.direction {
                
                case UISwipeGestureRecognizerDirection.Right:
                        println("Swiped to the right")
                        break
                case UISwipeGestureRecognizerDirection.Left:
                        println("Swipe to the left")
                        break
                case UISwipeGestureRecognizerDirection.Up:
                    println("Swipe up!")
                    break
                case UISwipeGestureRecognizerDirection.Down:
                    println("Swipe down.")
                    break
                default:
                        break
            }
        }
    }
}


