//
//  ViewController.swift
//  CustomTable
//
//  Created by Bob Lee on 12/18/16.
//  Copyright © 2016 BobtheDeveloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  var socialMediaNameArray = ["Facebook", "Medium", "LinkedIn", "Twitter", "YouTube"]
  var usernameArray = ["Bob the Develeoper", "Bob Lee", "Bob Lee", "@bobleesj", "Bob the Developer"]
  var socialMediaImageArray = [UIImage(named: "Facebook"), UIImage(named: "Medium"), UIImage(named: "LinkedIn"), UIImage(named: "Twitter"), UIImage(named: "YouTube")]

  @IBOutlet weak var tableView: UITableView!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return socialMediaNameArray.count
  }
  

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
    
    cell.usernameLabel.text = usernameArray[indexPath.row]
    cell.nameLabel.text = socialMediaNameArray[indexPath.row]
    cell.socialImage.image = socialMediaImageArray[indexPath.row]
    return cell
  }
  
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 50
  }

  

}
