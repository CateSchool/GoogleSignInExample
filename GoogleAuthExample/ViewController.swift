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
        GIDSignIn.sharedInstance().presentingViewController = self
        //GIDSignIn.sharedInstance().uiDelegate = self
        
        // To automatically sign in the user.
        //GIDSignIn.sharedInstance().signInSilently()
        
        // TODO(developer) Configure the sign-in button look/feel
        
    }

    @IBAction func signOutOfGoogle(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signOut()
    }
    
}

