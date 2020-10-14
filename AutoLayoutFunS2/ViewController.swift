//
//  ViewController.swift
//  AutoLayoutFunS2
//
//  Created by Gina Sprint on 10/7/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import UIKit

// MARK: - Auto Layout
// so far, we have been hardcoding the positioning of our views/
// a view is defined by a rectangle
// this rectangle has alot of attributes
// origin: the upper left hand corner used for positioning the view inside its superview (container view)
// size: this the width and the height of the view
// point: is a relative unit of measurement
// the number of pixels in a point is dependent on the screen resolution
// demo 1: add button to center of screen using alignment crosshairs, view the app for various screens and for landscape orientation
// auto layout will determine the position and size at runtime based on the size of the screen
// auto layout requires a view to have *at least 4 constraints*
// constraint: a relationship between views that can be determined at runtime
// 4 constraints
// position: X and Y constraints (horizontal and vertical)
// size: width and height constraints
// views have implicit width and heights
// makes our job easier, we can just use those

// demo 2: add alignment constraints for the button to make it centered horizontally and vertically in its container
// (what is a container view? a view that contains other views)

// demo 3: add two buttons. add a top constraint to pin it 16 points below the safe area
// add a top constraint for the second button to pin it 16 points below the previous button
// select both and add a constraints to align horizontally in container

// demo 4: add three buttons in a row horizontally. select all three and add a top 16 point constraint
// for the left one add a leading constraint for 16 points
// for the right one add a trailing constraint for 16 points
// for the middle one add a leading and trailing constraint for 4 points
// get horizontal ambiguous warning
// if the screen grows or shrink in size, there has to be a rule for which view gets to occupy the extra space or which view is the first to shrink in size
// select all three buttons and add constraint to have equal widths
// warning goes away

// demo 5: add three more buttons. select all and embed in stack view
// set the stack views top constraint to be 16 below the nearest neighbor
// set the stack views leading and trailing constraints to be 16
// in the attribute inspector for the stack view, set the distribution to fill equally (so we don't have the horizontally ambiguous warning) and set the spacing to 4

// so far, when we used stack views we set the distribution to "fill equally"
// but what if we have a view that we want to fill the available space? or be twice as big as another view?
// 2 ways to do this
// 1. specifying a multiplier as part of an equal widths/heights constraint
// the end of 2.10 in ADS has a calculator lab that does this
// 2. specifying content hugging priority (CHP) and compression resistance priority (CRP)
// suppose we have two buttons, we want one button to "hug" it intrinsic content size and we want the other button to fill the available space (not hug)
// CHP: this is like a rubber band that keeps a view "hugging" its intrinsic content size
// the higher the CHP, the more likely the view will stay small
// CRP: the higher the CRP the more likely the view will "resist" getting smaller

// demo:

// task: create a layout of 3x3 buttons that equally share the available width and height of the screen
// all 9 buttons should be wired up to the same IBAction that simply prints "button pressed" when any button is pressed

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        print("button pressed")
        // how do we know which button was pressed?
        // 2 ways
        // 1. use the tag property of UIView
        print("tag: \(sender.tag)")
        // 2. use an outlet collection
        if let senderIndex = buttons.firstIndex(of: sender) {
            print("senderIndex: \(senderIndex)")
        }
    }
}

