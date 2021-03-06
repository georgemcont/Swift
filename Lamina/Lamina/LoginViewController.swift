//
//  LoginViewController.swift
//  Lamina
//
//  Created by George Roy on 10/10/18.
//  Copyright © 2018 wiclf. All rights reserved.
//

import UIKit
import Firebase
import MBProgressHUD

class LoginViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmailId: UITextField!

    var hud : MBProgressHUD = MBProgressHUD() 

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sign In / Sign Up"
        self.navigationItem.hidesBackButton = true
        let user = Auth.auth().currentUser
        if user != nil {
            self.performSegue(withIdentifier: "homeSegue", sender: self)
        }
        
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnSignUpClick(_ sender: Any) {
        
        if (txtEmailId.text?.isEmpty)! {
            showAlert(message :"PLEASE ENTER A VALID EMAIL ADDRESS")
        }else if (txtPassword.text?.isEmpty)! {
            showAlert(message :"PLEASE ENTER A 6 CHARACTER PASSWORD")
        }else{
            hud = MBProgressHUD.showAdded(to: self.view, animated: true)
            hud.mode = MBProgressHUDMode.indeterminate
            hud.label.text = "Registring..."
            hud.show(animated: true)
        }
        
        
        
        Auth.auth().createUser(withEmail: txtEmailId.text!, password: txtPassword.text!) { (user, error) in
            MBProgressHUD.hide(for: self.view, animated: true)
            if  error != nil {
                self.showAlert(message :"SOMETHING WENT WRONG PLEASE TRY AGAIN ")
                print  ("Start of Error:\(error!)")
            } else {
                //success
                self.performSegue(withIdentifier: "homeSegue", sender: self)
            }
        }
        
    }
    
    
    @IBAction func btnSignInClick(_ sender: Any) {
        
        if ((txtEmailId.text?.isEmpty)!) {
            showAlert(message :"PLEASE ENTER A VALID EMAIL ADDRESS")
        }else if ((txtPassword.text?.isEmpty)!) {
            showAlert(message :"PLEASE ENTER A 6 CHARACTER PASSWORD")
        }else{
            hud = MBProgressHUD.showAdded(to: self.view, animated: true)
            hud.mode = MBProgressHUDMode.indeterminate
            hud.label.text = "Login..."
            hud.show(animated: true)
        }
        
        Auth.auth().signIn(withEmail: txtEmailId.text!, password: txtPassword.text!) { (user, error) in
            MBProgressHUD.hide(for: self.view, animated: true)
            if  error != nil {
                self.showAlert(message:"SOMETHING WENT WRONG PLEASE TRY AGAIN")
                print  ("Start of Error:\(error!)")
            } else {
                //success
                self.performSegue(withIdentifier: "homeSegue", sender: self)
            }
        }
        
    }
    
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    /*
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
