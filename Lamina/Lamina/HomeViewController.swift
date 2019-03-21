//
//  HomeViewController.swift
//  Lamina
//
//  Created by George Roy on 10/10/18.
//  Copyright © 2018 wiclf. All rights reserved.
//

import UIKit
import Firebase
import MBProgressHUD

class HomeViewController: UIViewController {

    @IBOutlet weak var tblLocationList: UITableView!
    let db = Firestore.firestore()
    var locationsArray :[NSDictionary] = []
    var hud : MBProgressHUD = MBProgressHUD()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        self.navigationItem.hidesBackButton = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.getLocationData()
    }
    
    func getLocationData() {
  
            hud = MBProgressHUD.showAdded(to: self.view, animated: true)
            hud.mode = MBProgressHUDMode.indeterminate
            hud.label.text = "Getting Locations..."
            hud.show(animated: true)
        
        self.locationsArray.removeAll()
        let user = Auth.auth().currentUser
        
        db.collection("Locations").whereField("user", isEqualTo: user?.uid as Any).getDocuments() { (querySnapshot, err) in
            
            self.hud.hide(animated: true)
            
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    self.locationsArray.append(document.data() as NSDictionary)
                }
                if self.locationsArray.count > 0 {
                    self.tblLocationList.reloadData()
                }
            }
        }

        
    }
    
    @IBAction func btnLogoutClick(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            debugPrint("Logout successfully")
            self.navigationController?.popViewController(animated: true)
        } catch let signoutError as NSError {
            debugPrint ("Error Signing Out \(signoutError)")
        }
    }
    
    @IBAction func btnAddLocationClick(_ sender: Any) {
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

extension HomeViewController :  UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.locationsArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LocationCell", for: indexPath)
        cell.selectionStyle = .none
        configureCell(cell: cell, forRowAt: indexPath)
        return cell
    }
    
    func configureCell(cell: UITableViewCell, forRowAt indexPath: IndexPath) {
      
        let locationDocument = self.locationsArray[indexPath.row]
        cell.textLabel?.text = locationDocument["location_name"] as? String
    }
    
    
}

extension HomeViewController : UITableViewDelegate {
    
}
