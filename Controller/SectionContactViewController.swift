//
//  SectionContactViewController.swift
//  TableViewProject
//
//  Created by Nikita Shirobokov on 06.11.22.
//

import UIKit

class SectionContactViewController: UITableViewController {
    
//    private let model = ContactsData.sharedInstance
    private var persons: [Contact] = ContactsData.sharedInstance.persons
    private var fullNameSection = [""]
    private var model = ContactsData.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        persons = model.persons
        fullNameSection.remove(at: 0)
        
        for person in 0...(persons.count - 1) {
            fullNameSection.append("\(persons[person].name) \(model.persons[person].surname)")
        }
//        print(fullNameSection)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Task2", for: indexPath)
        
        if indexPath.row == 0 {
            cell.textLabel?.text = "\(model.persons[indexPath.section].phone)"
        } else {
            cell.textLabel?.text = "\(model.persons[indexPath.section].email)"
        }
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let nameSurname = "\(fullNameSection[section])"
        
//        fullNameSection.remove(at: 1)
//        if section == 0 {
//            return nameSurname
//        } else if section == 1 {
//            return nameSurname
//        } else if section == 2 {
//            return "\(fullNameSection[section]) \(fullNameSection[section + 1])"
//        } else if section == 3 {
//            return "\(fullNameSection[section]) \(fullNameSection[section + 1])"
//        } else if section == 4 {
//            return fullNameSection[4]
//        } else if section == 5 {
//            return fullNameSection[5]
//        } else if section == 6 {
//            return fullNameSection[6]
//        } else {
//            return "\(section)"
//        }
        return nameSurname
    }

}
