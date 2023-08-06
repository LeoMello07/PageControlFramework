//
//  BWWalkthroughViewController.swift
//  PageControlFramework
//
//  Created by Leonardo Mello on 05/08/23.
//

import UIKit
import BWWalkthrough

class WalkthroughViewController: UIViewController, BWWalkthroughViewControllerDelegate{

    @IBAction func showWalkthroughButton(_ sender: Any) {
        
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let walkthrough = stb.instantiateViewController(withIdentifier: "walk0") as! BWWalkthroughViewController
        let page_one = stb.instantiateViewController(withIdentifier: "walk1") as UIViewController
        let page_two = stb.instantiateViewController(withIdentifier: "walk2") as UIViewController

        // Attach the pages to the master
        walkthrough.delegate = self
        walkthrough.add(viewController:page_one)
        walkthrough.add(viewController:page_two)
        
        self.show(walkthrough, sender: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
