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

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

