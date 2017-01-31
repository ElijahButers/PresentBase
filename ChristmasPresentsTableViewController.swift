//
//  ChristmasPresentsTableViewController.swift
//  PresentBaseSwift3.0
//
//  Created by User on 1/13/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit
import CoreData

class ChristmasPresentsTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var myGifts = [["name":"Best Friend","image":"1","item":"Camera"],["name":"Mom","image":"2","item":"Flowers"],["name":"Dad","image":"3","item":"Some kind of tech"],["name":"Sister","image":"4","item":"Sweets"]]

    override func viewDidLoad() {
        super.viewDidLoad()

        let iconImageView = UIImageView(image: UIImage(named: "Shape"))
        self.navigationItem.titleView = iconImageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myGifts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PresentsTableViewCell

        // Configure the cell...
        let giftObject = myGifts[indexPath.row]
        cell.backgroundImageView.image = UIImage(named: giftObject["image"]!)
        cell.nameLabel.text = giftObject["name"]
        cell.itemLabel.text = giftObject["item"]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 150
    }
    
    @IBAction func addPresent(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            picker.dismiss(animated: true, completion: {
                self.createPresentItem(with: image)
            })
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func createPresentItem(with image: UIImage) {
        
    }

}
