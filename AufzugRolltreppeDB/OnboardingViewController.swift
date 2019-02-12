//
//  OnboardingViewController.swift
//  AufzugRolltreppeDB
//
//  Created by Teske, Jakob (415) on 11.02.19.
//  Copyright © 2019 Jakob Teske. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func scrollDownTapped(_ sender: Any) {
        scrollView.setContentOffset(CGPoint(x: 0, y: 600), animated: true)
        scrollView.setContentOffset(CGPoint(x: 0, y: 1200), animated: true)
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
