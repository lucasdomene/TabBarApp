//
//  NumbersViewController.swift
//  TabBarApp
//
//  Created by Lucas Domene on 13/08/18.
//  Copyright © 2018 Lucas Domene. All rights reserved.
//

import UIKit

class NumbersViewController: UIViewController {
	
	// MARK: - @IBOutlets
	
	@IBOutlet weak var tableView: UITableView!
	
	// MARK: - View Life Cycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.register(UINib(nibName: "NumberTableViewCell", bundle: nil), forCellReuseIdentifier: "NumberCell")
	}
	
}

extension NumbersViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 100
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCell", for: indexPath) as! NumberTableViewCell
		cell.numberLabel.text = "\(indexPath.row * indexPath.row)"
		return cell
	}
	
}

