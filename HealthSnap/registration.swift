//
//  registration.swift
//  HealthSnap
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class registration: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var EmailAddress: UITextField!
    @IBOutlet var Password: UITextField!
    
    @IBAction func Submit(_ sender: Any, forEvent event: UIEvent) {

        
        
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let tabBarController = self.storyboard?.instantiateViewController(withIdentifier: "tabBarController")
            self.view.window?.rootViewController = tabBarController
            
            
//            self.performSegue(withIdentifier: "alreadyRegistered", sender: nil)
        }
        
    }
    
    @IBAction func Register(_ sender: Any) {
        performSegue(withIdentifier: "registerSegue", sender: self)
    }
    
    @IBAction func SaveContinue(_ sender: Any) {
        performSegue(withIdentifier: "homeSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
