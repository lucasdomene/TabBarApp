//
//  NumbersViewController.swift
//  TabBarApp
//
//  Created by Lucas Domene on 13/08/18.
//  Copyright © 2018 Lucas Domene. All rights reserved.
//

import UIKit

class NumbersViewController: UIViewController {
	
	// MARK: - Attributes
	
	var squareNumbers = [SquareNumber]()
	
	// MARK: - @IBOutlets
	
	@IBOutlet weak var tableView: UITableView!
	
	// MARK: - View Life Cycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		createSquareNumbers()
		registerCell()
	}
	
	func createSquareNumbers() {
		for number in 0...100 {
			squareNumbers.append(SquareNumber(number: number))
		}
	}
	
}

extension NumbersViewController: UITableViewDataSource {
	
	// MARK: - Table View Customization
	
	func registerCell() {
		tableView.register(UINib(nibName: "NumberTableViewCell", bundle: nil), forCellReuseIdentifier: "NumberCell")
	}
	
	// MARK: - UITableViewDataSource
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return squareNumbers.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCell", for: indexPath) as! NumberTableViewCell
		let squareNumber = squareNumbers[indexPath.row]
		cell.fill(withSquareNumber: squareNumber)
		return cell
	}
	
}
