//
//  ViewController.swift
//  SampleSqlite
//
//  Created by SungYu on 2018. 8. 1..
//  Copyright © 2018년 Sung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func createTable() {
        print("CREATE TAPPED")
    }
    
    @IBAction func insertUser() {
        print("INSERT TAPPED")
        let alert = UIAlertController(title: "Insert User", message: nil, preferredStyle: .alert)
        alert.addTextField { (tf) in tf.placeholder = "Name" }
        alert.addTextField { (tf) in tf.placeholder = "Email" }
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
            guard let name = alert.textFields?.first?.text,
                let email = alert.textFields?.last?.text
                else { return }
            print(name)
            print(email)
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func listUsers() {
        print("LIST TAPPED")
        
    }
    
    @IBAction func updateUser() {
        print("UPDATE TAPPED")
        let alert = UIAlertController(title: "Update User", message: nil, preferredStyle: .alert)
        alert.addTextField { (tf) in tf.placeholder = "User ID" }
        alert.addTextField { (tf) in tf.placeholder = "Email" }
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
            guard let userIdString = alert.textFields?.first?.text,
                let email = alert.textFields?.last?.text
                else { return }
            print(userIdString)
            print(email)
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func deleteUser() {
        print("DELETE TAPPED")
        let alert = UIAlertController(title: "Update User", message: nil, preferredStyle: .alert)
        alert.addTextField { (tf) in tf.placeholder = "User ID" }
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
            guard let userIdString = alert.textFields?.first?.text else { return }
            print(userIdString)
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}

