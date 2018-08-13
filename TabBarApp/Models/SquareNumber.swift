//
//  SquareNumber.swift
//  TabBarApp
//
//  Created by Lucas Domene on 13/08/18.
//  Copyright © 2018 Lucas Domene. All rights reserved.
//

import UIKit

struct SquareNumber {
	
	var textColor: UIColor
	var backgroundColor: UIColor
	var value: Int
	
	init(number: Int) {
		value = number * number
		backgroundColor = number % 2 == 0 ? .white : .black
		textColor = number % 2 == 0 ? .black : .white
	}
	
}
