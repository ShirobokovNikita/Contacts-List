//
//  ContatcListVersoin2.swift
//  TableViewProject
//
//  Created by Nikita Shirobokov on 07.11.22.
//

import UIKit

class ContatcListVersoin2: UITableViewController {

    private let model = ContactsData.sharedInstance
    private var persons: [Contact] = ContactsData.sharedInstance.persons
    
    private let customTableViewCellId = "CustomTableViewCell"
    private let goToDetailVCSegueu = "goToDetailVC"
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        persons = model.persons
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        60
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customTableViewCellId) as! CustomTableViewCell
        cell.nameLabel.text = "\(persons[indexPath.row].name) \(persons[indexPath.row].surname)"
        cell.pictureImageView.image = UIImage(named: persons[indexPath.row].avatar)
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailContactViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            
            destinationVC.avatarRecieved = persons[indexPath.row].avatar
            destinationVC.fullNameRecived = "\(persons[indexPath.row].name) \(persons[indexPath.row].surname)"
            destinationVC.emailRecived = persons[indexPath.row].email
            destinationVC.phoneRecived = persons[indexPath.row].phone
            
        } else {
            return
        }
    }




    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
