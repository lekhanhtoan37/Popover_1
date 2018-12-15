//
//  ViewController.swift
//  Popover_1
//
//  Created by Toan on 11/29/18.
//  Copyright © 2018 Toan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var popoverButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        popoverButton.backgroundColor = .clear
        popoverButton.layer.cornerRadius = 5
        popoverButton.layer.borderWidth = 0.5
        popoverButton.layer.borderColor = UIColor.lightGray.cgColor
        let cn : String = Singleton.shared.stringg ?? "Pop over"
        popoverButton.setTitle(cn, for: .normal)
    }
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination
        let pc = vc.popoverPresentationController
        pc?.sourceRect = CGRect(origin: self.view.center, size: CGSize.zero)
        pc?.delegate = self
        
    }
    //
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
}

