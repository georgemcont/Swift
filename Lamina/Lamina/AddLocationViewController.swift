//
//  AddLocationViewController.swift
//  Lamina
//
//  Created by George Roy on 10/10/18.
//  Copyright © 2018 wiclf. All rights reserved.
//

import UIKit
import Firebase

class AddLocationViewController: UIViewController {

    @IBOutlet weak var txtLocationName: UITextField!
    let db = Firestore.firestore()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnAddLocationClick(_ sender: Any) {
        
        if (txtLocationName.text?.isEmpty)! {
            
        }else{
            let user = Auth.auth().currentUser
            // Add a new document with a generated ID
            var ref: DocumentReference? = nil
            ref = db.collection("Locations").addDocument(data: [
                "user": user?.uid,
                "location_name": self.txtLocationName.text,
                
            ]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print("Document added with ID: \(ref!.documentID)")
                }
            }
            
            
        }
        
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
