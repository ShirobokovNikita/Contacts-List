//
//  ContactListViewController.swift
//  TableViewProject
//
//  Created by Nikita Shirobokov on 05.11.22.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private let model = ContactsData.sharedInstance
    private var persons: [Contact] = ContactsData.sharedInstance.persons
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        persons = model.persons
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.avatars.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackName", for: indexPath)
        cell.textLabel?.text = "\(model.persons[indexPath.row].name) \(model.persons[indexPath.row].surname)"
        cell.imageView?.image = UIImage(named: "\(model.persons[indexPath.row].avatar)")
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

}


