//
//  MainViewController.swift
//  money-management-app
//
//  Created by Jason  Chan on 4/23/21.
//

import UIKit
import Parse

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var inputs = [PFObject]()
    
    
    @IBOutlet var tableView: UITableView!
    

    @IBOutlet weak var moneyBudget: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let query = PFQuery(className: "Input")
        query.limit = 20
        query.findObjectsInBackground { (inputs, error) in
            if inputs != nil{
                self.inputs = inputs!
                self.tableView.reloadData()
            }
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inputs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InputsCell") as! InputsCell
        let input = inputs[indexPath.row]
        
        cell.amount.text = input["amount"] as! String
        cell.category.text = input["category"] as! String
        //cell.date. = input["createdAt"] as! Date
        cell.type.text = input["type"] as! String
        return cell
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //Adding the feature to logout - Erlis
    @IBAction func logoutButton(_ sender: Any) {
        
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        
        let delegate = self.view.window?.windowScene?.delegate as! SceneDelegate
        
        delegate.window?.rootViewController = loginViewController
        
    }
}
