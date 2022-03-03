//
//  ChairTableViewController.swift
//  AirCnC_Step_04_02
//
//  Created by 백민기 on 2022/02/28.
//

import UIKit

struct Chairs {
    let name: String
    let image: String
    let owner: String
    let ownerImage: String
    let price: String
    let length: String
    let width: String
    let height: String
}

class ChairTableViewController: UITableViewController {
    
    var chair = [Chairs(name: "Chair1", image: "Image1", owner: "Owner1", ownerImage: "OwnerImage1", price: "11", length: "12", width: "13", height: "14"),
                 Chairs(name: "Chair2", image: "Image2", owner: "Owner2", ownerImage: "OwnerImage2", price: "21", length: "22", width: "23", height: "24"),
                 Chairs(name: "Chair3", image: "Image3", owner: "Owner3", ownerImage: "OwnerImage3", price: "31", length: "32", width: "33", height: "34"),
                 Chairs(name: "Chair4", image: "Image4", owner: "Owner4", ownerImage: "OwnerImage4", price: "41", length: "42", width: "43", height: "44")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return chair.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chair cell", for: indexPath)

        let chair = chair[indexPath.row]
        cell.imageView?.image = UIImage(named: chair.image)
        cell.textLabel?.text = chair.owner
        cell.detailTextLabel?.text = chair.price

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "detailSegue",
            let detailVC = segue.destination as? DetailViewController,
            let cell = sender as? UITableViewCell,
            let index = self.tableView.indexPath(for: cell) {
                let chairData = chair[index.row]
                detailVC.chairData = chairData
        }
    }
    

}
