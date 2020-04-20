//
//  ViewController.swift
//  GoogleAuthExample
//
//  Created by John MacFarlane on 4/11/19.
//  Copyright © 2019 Cate School. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Mark myself as the delegte
         GIDSignIn.sharedInstance()?.presentingViewController = self

        // Automatically sign in the user.
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        
    }

    func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!,
      withError error: NSError!) {
        if (error == nil) {
          // Perform any operations on signed in user here.
          // ...
        } else {
          print("\(error.localizedDescription)")
        }
    }
    
    @IBAction func signOutOfGoogle(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signOut()
    }
    
}

