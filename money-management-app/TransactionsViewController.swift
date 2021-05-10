//
//  TransactionsViewController.swift
//  money-management-app
//
//  Created by Erlis Ibraimi on 24.4.21.
//

import UIKit
import Parse

class TransactionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var category: UITextField!
    @IBOutlet weak var typeControl: UISegmentedControl!
    
    @IBOutlet weak var amount: UITextField!

    @IBAction func submit(_ sender: Any) {
        let input = PFObject(className: "Input")
        if(typeControl.selectedSegmentIndex == 0){
            input["type"] = "Expense"
        }
        else{
            input["type"] = "Deposit"
        }
        input["category"] = category.text
        input["amount"] = amount.text
        input["owner"] = PFUser.current()
        input.saveInBackground { (success, error) in
            if success{
                print("Saved!")
            }
            else{
                print("error!")
            }
        }
        dismiss(animated: true, completion: nil)
    }
    //start mohamed
    //@IBAction func addExpense(_ sender: Any) {
   // }
    
    //@IBAction func addDeposit(_ sender: Any) {
    //}

    
    
    //end mohamed
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
