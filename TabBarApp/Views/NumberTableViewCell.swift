//
//  NumberTableViewCell.swift
//  TabBarApp
//
//  Created by Lucas Domene on 13/08/18.
//  Copyright © 2018 Lucas Domene. All rights reserved.
//

import UIKit

class NumberTableViewCell: UITableViewCell {

	// MARK: - @IBOutlets
	
	@IBOutlet weak var numberLabel: UILabel!
	
	// MARK: - View Life Cycle
	
	override func awakeFromNib() {
        super.awakeFromNib()
        clean()
    }
	
	// MARK: - View Configuration
	
	private func clean() {
		numberLabel.text = nil
	}
	
}
